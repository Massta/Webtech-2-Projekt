// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library fasta.class_builder;

import '../errors.dart' show internalError;

import 'builder.dart'
    show
        Builder,
        ConstructorReferenceBuilder,
        LibraryBuilder,
        MemberBuilder,
        MetadataBuilder,
        MixinApplicationBuilder,
        NamedTypeBuilder,
        Scope,
        ScopeBuilder,
        TypeBuilder,
        TypeDeclarationBuilder,
        TypeVariableBuilder;

abstract class ClassBuilder<T extends TypeBuilder, R>
    extends TypeDeclarationBuilder<T, R> {
  final List<TypeVariableBuilder> typeVariables;

  T supertype;

  List<T> interfaces;

  final Scope scope;

  final Scope constructors;

  final ScopeBuilder scopeBuilder;

  final ScopeBuilder constructorScopeBuilder;

  ClassBuilder(
      List<MetadataBuilder> metadata,
      int modifiers,
      String name,
      this.typeVariables,
      this.supertype,
      this.interfaces,
      this.scope,
      this.constructors,
      LibraryBuilder parent,
      int charOffset)
      : scopeBuilder = new ScopeBuilder(scope),
        constructorScopeBuilder = new ScopeBuilder(constructors),
        super(metadata, modifiers, name, parent, charOffset);

  /// Returns true if this class is the result of applying a mixin to its
  /// superclass.
  bool get isMixinApplication => mixedInType != null;

  T get mixedInType;

  List<ConstructorReferenceBuilder> get constructorReferences => null;

  LibraryBuilder get library {
    LibraryBuilder library = parent;
    return library.partOfLibrary ?? library;
  }

  @override
  int resolveConstructors(LibraryBuilder library) {
    if (constructorReferences == null) return 0;
    for (ConstructorReferenceBuilder ref in constructorReferences) {
      ref.resolveIn(scope);
    }
    return constructorReferences.length;
  }

  /// Used to lookup a static member of this class.
  Builder findStaticBuilder(String name, int charOffset, Uri fileUri,
      {bool isSetter: false}) {
    Builder builder = isSetter
        ? scope.lookupSetter(name, charOffset, fileUri, isInstanceScope: false)
        : scope.lookup(name, charOffset, fileUri, isInstanceScope: false);
    return builder;
  }

  Builder findConstructorOrFactory(String name, int charOffset, Uri uri) {
    return constructors.lookup(name, charOffset, uri);
  }

  /// Returns a map which maps the type variables of [superclass] to their
  /// respective values as defined by the superclass clause of this class (and
  /// its superclasses).
  ///
  /// It's assumed that [superclass] is a superclass of this class.
  ///
  /// For example, given:
  ///
  ///     class Box<T> {}
  ///     class BeatBox extends Box<Beat> {}
  ///     class Beat {}
  ///
  /// We have:
  ///
  ///     [[BeatBox]].getSubstitutionMap([[Box]]) -> {[[Box::T]]: Beat]]}.
  ///
  /// This method returns null if the map is empty, and it's an error if
  /// [superclass] isn't a superclass.
  Map<TypeVariableBuilder, TypeBuilder> getSubstitutionMap(
      ClassBuilder superclass,
      Uri fileUri,
      int charOffset,
      TypeBuilder dynamicType) {
    TypeBuilder supertype = this.supertype;
    Map<TypeVariableBuilder, TypeBuilder> substitutionMap;
    List arguments;
    List variables;
    Builder builder;
    while (builder != superclass) {
      if (supertype is NamedTypeBuilder) {
        NamedTypeBuilder t = supertype;
        builder = t.builder;
        arguments = t.arguments;
        if (builder is ClassBuilder) {
          variables = builder.typeVariables;
          if (builder != superclass) {
            supertype = builder.supertype;
          }
        }
      } else if (supertype is MixinApplicationBuilder) {
        MixinApplicationBuilder t = supertype;
        supertype = t.supertype;
      } else {
        internalError("Superclass not found.", fileUri, charOffset);
      }
      if (variables != null) {
        Map<TypeVariableBuilder, TypeBuilder> directSubstitutionMap =
            <TypeVariableBuilder, TypeBuilder>{};
        arguments ??= const [];
        for (int i = 0; i < variables.length; i++) {
          TypeBuilder argument =
              arguments.length < i ? arguments[i] : dynamicType;
          if (substitutionMap != null) {
            argument = argument.subst(substitutionMap);
          }
          directSubstitutionMap[variables[i]] = argument;
        }
        substitutionMap = directSubstitutionMap;
      }
    }
    return substitutionMap;
  }

  void forEach(void f(String name, MemberBuilder builder)) {
    scope.forEach(f);
  }

  /// Don't use for scope lookup. Only use when an element is known to exist
  /// (and isn't a setter).
  MemberBuilder operator [](String name) {
    // TODO(ahe): Rename this to getLocalMember.
    return scope.local[name] ?? internalError("Not found: '$name'.");
  }

  void addCompileTimeError(int charOffset, String message) {
    library.addCompileTimeError(charOffset, message, fileUri: fileUri);
  }

  void addWarning(int charOffset, String message) {
    library.addWarning(charOffset, message, fileUri: fileUri);
  }

  void addNit(int charOffset, String message) {
    library.addNit(charOffset, message, fileUri: fileUri);
  }
}

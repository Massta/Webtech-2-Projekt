// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'create_component.dart';
export 'create_component.dart';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:example08/model/news.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_forms/angular_forms.template.dart' as _ref1;
import 'package:example08/model/news.template.dart' as _ref2;

import 'package:angular/src/debug/debug_context.dart';
import 'package:angular_forms/src/directives/ng_form.dart' as import1;
import 'package:angular_forms/src/directives/control_container.dart' as import2;
import 'package:angular_forms/src/directives/default_value_accessor.dart' as import3;
import 'package:angular_forms/src/directives/ng_model.dart' as import4;
import 'package:angular_forms/src/directives/validators.dart' as import5;
import 'package:angular_forms/src/directives/ng_control.dart' as import6;
import 'package:angular/src/debug/debug_app_view.dart';
import 'create_component.dart' as import8;
import 'dart:html' as import9;
import 'package:angular_forms/src/directives/ng_model.template.dart' as import10;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import13;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import15;
import 'package:angular/angular.dart';
import 'package:angular_forms/src/validators.dart' as import17;

const List<dynamic> styles$CreateNews = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_CreateNews0 = [
  null,
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([import1.NgForm, import2.ControlContainer], null, <String, dynamic>{}),
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([const OpaqueToken('NgValidators'), import3.DefaultValueAccessor, const OpaqueToken('NgValueAccessor'), import4.NgModel, import5.RequiredValidator, import6.NgControl], null, <String, dynamic>{}),
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([const OpaqueToken('NgValidators'), import3.DefaultValueAccessor, const OpaqueToken('NgValueAccessor'), import4.NgModel, import5.RequiredValidator, import6.NgControl], null, <String, dynamic>{}),
  null,
  null,
  null,
  null,
  null,
  null,
  null
];

class ViewCreateNews0 extends DebugAppView<import8.CreateNews> {
  import9.DivElement _el_0;
  import9.Element _el_2;
  import9.FormElement _el_5;
  import1.NgForm _NgForm_5_4;
  import9.Element _el_7;
  import9.Element _el_9;
  import9.Element _el_11;
  import9.Element _el_15;
  import9.InputElement _el_17;
  List<dynamic> _const_OpaqueToken__NgValidators___17_4;
  import3.DefaultValueAccessor _DefaultValueAccessor_17_5;
  List<dynamic> _const_OpaqueToken__NgValueAccessor___17_6;
  import10.NgModelNgCd _NgModel_17_7;
  import5.RequiredValidator _RequiredValidator_17_8;
  import9.Element _el_20;
  import9.Element _el_22;
  import9.Element _el_26;
  import9.InputElement _el_28;
  List<dynamic> _const_OpaqueToken__NgValidators___28_4;
  import3.DefaultValueAccessor _DefaultValueAccessor_28_5;
  List<dynamic> _const_OpaqueToken__NgValueAccessor___28_6;
  import10.NgModelNgCd _NgModel_28_7;
  import5.RequiredValidator _RequiredValidator_28_8;
  import9.ButtonElement _el_32;
  var _expr_0;
  var _expr_1;
  static RenderComponentType _renderType;
  ViewCreateNews0(AppView<dynamic> parentView, num parentIndex) : super(import13.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_CreateNews0) {
    rootEl = import9.document.createElement('create-news');
    _renderType ??= import15.appViewUtils.createRenderType('package:example08/components/basic/create/create_component.html', ViewEncapsulation.None, styles$CreateNews);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import9.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var doc = import9.document;
    _el_0 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 0, 0, 0);
    import9.Text _text_1 = new import9.Text('\n    ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 0, 5);
    _el_2 = createAndAppendDbg(this, doc, 'h3', _el_0, 2, 1, 4);
    import9.Text _text_3 = new import9.Text('Post News');
    _el_2.append(_text_3);
    dbgElm(this, _text_3, 3, 1, 8);
    import9.Text _text_4 = new import9.Text('\n    ');
    _el_0.append(_text_4);
    dbgElm(this, _text_4, 4, 1, 22);
    _el_5 = createAndAppendDbg(this, doc, 'form', _el_0, 5, 2, 4);
    _NgForm_5_4 = new import1.NgForm(null);
    import9.Text _text_6 = new import9.Text('\n        ');
    _el_5.append(_text_6);
    dbgElm(this, _text_6, 6, 2, 10);
    _el_7 = createAndAppendDbg(this, doc, 'dl', _el_5, 7, 3, 8);
    import9.Text _text_8 = new import9.Text('\n            ');
    _el_7.append(_text_8);
    dbgElm(this, _text_8, 8, 3, 12);
    _el_9 = createAndAppendDbg(this, doc, 'dt', _el_7, 9, 4, 12);
    import9.Text _text_10 = new import9.Text('\n                ');
    _el_9.append(_text_10);
    dbgElm(this, _text_10, 10, 4, 16);
    _el_11 = createAndAppendDbg(this, doc, 'label', _el_9, 11, 5, 16);
    import9.Text _text_12 = new import9.Text('Headline');
    _el_11.append(_text_12);
    dbgElm(this, _text_12, 12, 5, 23);
    import9.Text _text_13 = new import9.Text('\n            ');
    _el_9.append(_text_13);
    dbgElm(this, _text_13, 13, 5, 39);
    import9.Text _text_14 = new import9.Text('\n            ');
    _el_7.append(_text_14);
    dbgElm(this, _text_14, 14, 6, 17);
    _el_15 = createAndAppendDbg(this, doc, 'dd', _el_7, 15, 7, 12);
    import9.Text _text_16 = new import9.Text('\n                ');
    _el_15.append(_text_16);
    dbgElm(this, _text_16, 16, 7, 16);
    _el_17 = createAndAppendDbg(this, doc, 'input', _el_15, 17, 8, 16);
    createAttr(_el_17, 'required', '');
    createAttr(_el_17, 'type', 'text');
    _const_OpaqueToken__NgValidators___17_4 = [import17.Validators.required];
    _DefaultValueAccessor_17_5 = new import3.DefaultValueAccessor(_el_17);
    _const_OpaqueToken__NgValueAccessor___17_6 = [_DefaultValueAccessor_17_5];
    _NgModel_17_7 = new import10.NgModelNgCd(new import4.NgModel(_const_OpaqueToken__NgValidators___17_4, _const_OpaqueToken__NgValueAccessor___17_6));
    _RequiredValidator_17_8 = new import5.RequiredValidator();
    import9.Text _text_18 = new import9.Text('\n            ');
    _el_15.append(_text_18);
    dbgElm(this, _text_18, 18, 8, 74);
    import9.Text _text_19 = new import9.Text('\n            ');
    _el_7.append(_text_19);
    dbgElm(this, _text_19, 19, 9, 17);
    _el_20 = createAndAppendDbg(this, doc, 'dt', _el_7, 20, 10, 12);
    import9.Text _text_21 = new import9.Text('\n                ');
    _el_20.append(_text_21);
    dbgElm(this, _text_21, 21, 10, 16);
    _el_22 = createAndAppendDbg(this, doc, 'label', _el_20, 22, 11, 16);
    import9.Text _text_23 = new import9.Text('Content');
    _el_22.append(_text_23);
    dbgElm(this, _text_23, 23, 11, 23);
    import9.Text _text_24 = new import9.Text('\n            ');
    _el_20.append(_text_24);
    dbgElm(this, _text_24, 24, 11, 38);
    import9.Text _text_25 = new import9.Text('\n            ');
    _el_7.append(_text_25);
    dbgElm(this, _text_25, 25, 12, 17);
    _el_26 = createAndAppendDbg(this, doc, 'dd', _el_7, 26, 13, 12);
    import9.Text _text_27 = new import9.Text('\n                ');
    _el_26.append(_text_27);
    dbgElm(this, _text_27, 27, 13, 16);
    _el_28 = createAndAppendDbg(this, doc, 'input', _el_26, 28, 14, 16);
    createAttr(_el_28, 'required', '');
    createAttr(_el_28, 'type', 'text');
    _const_OpaqueToken__NgValidators___28_4 = [import17.Validators.required];
    _DefaultValueAccessor_28_5 = new import3.DefaultValueAccessor(_el_28);
    _const_OpaqueToken__NgValueAccessor___28_6 = [_DefaultValueAccessor_28_5];
    _NgModel_28_7 = new import10.NgModelNgCd(new import4.NgModel(_const_OpaqueToken__NgValidators___28_4, _const_OpaqueToken__NgValueAccessor___28_6));
    _RequiredValidator_28_8 = new import5.RequiredValidator();
    import9.Text _text_29 = new import9.Text('\n            ');
    _el_26.append(_text_29);
    dbgElm(this, _text_29, 29, 14, 73);
    import9.Text _text_30 = new import9.Text('\n        ');
    _el_7.append(_text_30);
    dbgElm(this, _text_30, 30, 15, 17);
    import9.Text _text_31 = new import9.Text('\n        ');
    _el_5.append(_text_31);
    dbgElm(this, _text_31, 31, 16, 13);
    _el_32 = createAndAppendDbg(this, doc, 'button', _el_5, 32, 17, 8);
    createAttr(_el_32, 'type', 'submit');
    import9.Text _text_33 = new import9.Text('Submit');
    _el_32.append(_text_33);
    dbgElm(this, _text_33, 33, 17, 57);
    import9.Text _text_34 = new import9.Text('\n    ');
    _el_5.append(_text_34);
    dbgElm(this, _text_34, 34, 17, 72);
    import9.Text _text_35 = new import9.Text('\n');
    _el_0.append(_text_35);
    dbgElm(this, _text_35, 35, 18, 11);
    import15.appViewUtils.eventManager.addEventListener(_el_5, 'submit', eventHandler1(_NgForm_5_4.onSubmit));
    _el_17.addEventListener('input', eventHandler1(_handle_input_17_1));
    _el_17.addEventListener('blur', eventHandler0(_DefaultValueAccessor_17_5.touchHandler));
    final subscription_0 = _NgModel_17_7.instance.update.listen(eventHandler1(_handle_ngModelChange_17_0));
    _el_28.addEventListener('input', eventHandler1(_handle_input_28_1));
    _el_28.addEventListener('blur', eventHandler0(_DefaultValueAccessor_28_5.touchHandler));
    final subscription_1 = _NgModel_28_7.instance.update.listen(eventHandler1(_handle_ngModelChange_28_0));
    _el_32.addEventListener('click', eventHandler1(ctx.postNews));
    init(const [], [subscription_0, subscription_1], [_el_0, _text_1, _el_2, _text_3, _text_4, _el_5, _text_6, _el_7, _text_8, _el_9, _text_10, _el_11, _text_12, _text_13, _text_14, _el_15, _text_16, _el_17, _text_18, _text_19, _el_20, _text_21, _el_22, _text_23, _text_24, _text_25, _el_26, _text_27, _el_28, _text_29, _text_30, _text_31, _el_32, _text_33, _text_34, _text_35]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, const OpaqueToken('NgValidators')) && (17 == nodeIndex))) {
      return _const_OpaqueToken__NgValidators___17_4;
    }
    if ((identical(token, import3.DefaultValueAccessor) && (17 == nodeIndex))) {
      return _DefaultValueAccessor_17_5;
    }
    if ((identical(token, const OpaqueToken('NgValueAccessor')) && (17 == nodeIndex))) {
      return _const_OpaqueToken__NgValueAccessor___17_6;
    }
    if (((identical(token, import4.NgModel) || identical(token, import6.NgControl)) && (17 == nodeIndex))) {
      return _NgModel_17_7.instance;
    }
    if ((identical(token, import5.RequiredValidator) && (17 == nodeIndex))) {
      return _RequiredValidator_17_8;
    }
    if ((identical(token, const OpaqueToken('NgValidators')) && (28 == nodeIndex))) {
      return _const_OpaqueToken__NgValidators___28_4;
    }
    if ((identical(token, import3.DefaultValueAccessor) && (28 == nodeIndex))) {
      return _DefaultValueAccessor_28_5;
    }
    if ((identical(token, const OpaqueToken('NgValueAccessor')) && (28 == nodeIndex))) {
      return _const_OpaqueToken__NgValueAccessor___28_6;
    }
    if (((identical(token, import4.NgModel) || identical(token, import6.NgControl)) && (28 == nodeIndex))) {
      return _NgModel_28_7.instance;
    }
    if ((identical(token, import5.RequiredValidator) && (28 == nodeIndex))) {
      return _RequiredValidator_28_8;
    }
    if (((identical(token, import1.NgForm) || identical(token, import2.ControlContainer)) && ((5 <= nodeIndex) && (nodeIndex <= 34)))) {
      return _NgForm_5_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import8.CreateNews _ctx = ctx;
    Map<String, SimpleChange> changes;
    bool firstCheck = (this.cdState == 0);
    changes = null;
    dbg(17, 8, 23);
    final currVal_0 = _ctx.model.headline;
    if (import15.checkBinding(_expr_0, currVal_0)) {
      _NgModel_17_7.instance.model = currVal_0;
      changes ??= <String, SimpleChange>{};
      changes['model'] = new SimpleChange(_expr_0, currVal_0);
      _expr_0 = currVal_0;
    }
    if (!identical(changes, null)) {
      _NgModel_17_7.instance.ngOnChanges(changes);
    }
    if ((firstCheck && !import15.AppViewUtils.throwOnChanges)) {
      _NgModel_17_7.instance.ngOnInit();
    }
    changes = null;
    dbg(28, 14, 23);
    final currVal_1 = _ctx.model.content;
    if (import15.checkBinding(_expr_1, currVal_1)) {
      _NgModel_28_7.instance.model = currVal_1;
      changes ??= <String, SimpleChange>{};
      changes['model'] = new SimpleChange(_expr_1, currVal_1);
      _expr_1 = currVal_1;
    }
    if (!identical(changes, null)) {
      _NgModel_28_7.instance.ngOnChanges(changes);
    }
    if ((firstCheck && !import15.AppViewUtils.throwOnChanges)) {
      _NgModel_28_7.instance.ngOnInit();
    }
  }

  void _handle_ngModelChange_17_0($event) {
    dbg(17, 8, 23);
    ctx.model.headline = $event;
  }

  void _handle_input_17_1($event) {
    dbg(17, 8, 16);
    _DefaultValueAccessor_17_5.onChange($event.target.value);
  }

  void _handle_ngModelChange_28_0($event) {
    dbg(28, 14, 23);
    ctx.model.content = $event;
  }

  void _handle_input_28_1($event) {
    dbg(28, 14, 16);
    _DefaultValueAccessor_28_5.onChange($event.target.value);
  }
}

AppView<import8.CreateNews> viewFactory_CreateNews0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewCreateNews0(parentView, parentIndex);
}

const List<dynamic> styles$CreateNewsHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_CreateNewsHost0 = [
  new StaticNodeDebugInfo([import8.CreateNews], import8.CreateNews, <String, dynamic>{})
];

class _ViewCreateNewsHost0 extends DebugAppView<dynamic> {
  ViewCreateNews0 _compView_0;
  import8.CreateNews _CreateNews_0_4;
  static RenderComponentType _renderType;
  _ViewCreateNewsHost0(AppView<dynamic> parentView, num parentIndex) : super(import13.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_CreateNewsHost0) {
    _renderType ??= import15.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$CreateNewsHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewCreateNews0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _CreateNews_0_4 = new import8.CreateNews();
    _compView_0.create(_CreateNews_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _CreateNews_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import8.CreateNews) && (0 == nodeIndex))) {
      return _CreateNews_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0.destroy();
  }
}

AppView viewFactory_CreateNewsHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewCreateNewsHost0(parentView, parentIndex);
}

const ComponentFactory _CreateNewsNgFactory = const ComponentFactory('create-news', viewFactory_CreateNewsHost0, import8.CreateNews, _CreateNewsMetadata);
final ComponentFactory CreateNewsNgFactory = _CreateNewsNgFactory;
const _CreateNewsMetadata = const [];
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ngRef.registerComponent(
    CreateNews,
    CreateNewsNgFactory,
  );
  _ngRef.registerFactory(
    CreateNews,
    () => new CreateNews(),
  );
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'app_component.dart';
export 'app_component.dart';
import 'package:angular/angular.dart';
import 'package:example08/components/jwt/jwt_component.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:example08/components/jwt/jwt_component.template.dart' as _ref1;

import 'package:angular/src/debug/debug_context.dart';
import 'components/jwt/jwt_component.dart' as import1;
import 'package:angular/src/debug/debug_app_view.dart';
import 'app_component.dart' as import3;
import 'dart:html' as import4;
import 'components/jwt/jwt_component.template.dart' as import5;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import8;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import10;
import 'package:angular/angular.dart';

const List<dynamic> styles$AppComponent = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_AppComponent0 = [
  null,
  null,
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([import1.JWTComponent], import1.JWTComponent, <String, dynamic>{}),
  null
];

class ViewAppComponent0 extends DebugAppView<import3.AppComponent> {
  import4.Element _el_1;
  import4.Text _text_2;
  import4.Element _el_4;
  import4.Element _el_6;
  import5.ViewJWTComponent0 _compView_6;
  import1.JWTComponent _JWTComponent_6_4;
  var _expr_0;
  static RenderComponentType _renderType;
  ViewAppComponent0(AppView<dynamic> parentView, num parentIndex) : super(import8.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_AppComponent0) {
    rootEl = import4.document.createElement('my-app');
    _renderType ??= import10.appViewUtils.createRenderType('asset:example08/lib/app_component.dart class AppComponent - inline template', ViewEncapsulation.None, styles$AppComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import4.HtmlElement parentRenderNode = initViewRoot(rootEl);
    import4.Text _text_0 = new import4.Text('      ');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 0, 0);
    var doc = import4.document;
    _el_1 = createAndAppendDbg(this, doc, 'h1', parentRenderNode, 1, 0, 6);
    _text_2 = new import4.Text('');
    _el_1.append(_text_2);
    dbgElm(this, _text_2, 2, 0, 10);
    import4.Text _text_3 = new import4.Text('\n      Willkommen zum #minimalistischen Todo-Manager!\n      ');
    parentRenderNode.append(_text_3);
    dbgElm(this, _text_3, 3, 0, 23);
    _el_4 = createAndAppendDbg(this, doc, 'br', parentRenderNode, 4, 2, 6);
    import4.Text _text_5 = new import4.Text('\n      ');
    parentRenderNode.append(_text_5);
    dbgElm(this, _text_5, 5, 2, 11);
    _compView_6 = new import5.ViewJWTComponent0(this, 6);
    _el_6 = _compView_6.rootEl;
    parentRenderNode.append(_el_6);
    dbgElm(this, _el_6, 6, 3, 6);
    _JWTComponent_6_4 = new import1.JWTComponent();
    _compView_6.create(_JWTComponent_6_4, []);
    import4.Text _text_7 = new import4.Text('\n    ');
    parentRenderNode.append(_text_7);
    dbgElm(this, _text_7, 7, 3, 37);
    init(const [], const [], [_text_0, _el_1, _text_2, _text_3, _el_4, _text_5, _el_6, _text_7]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import1.JWTComponent) && (6 == nodeIndex))) {
      return _JWTComponent_6_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import3.AppComponent _ctx = ctx;
    dbg(2, 0, 10);
    final currVal_0 = import10.interpolate0(_ctx.name);
    if (import10.checkBinding(_expr_0, currVal_0)) {
      _text_2.text = currVal_0;
      _expr_0 = currVal_0;
    }
    _compView_6.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_6.destroy();
  }
}

AppView<import3.AppComponent> viewFactory_AppComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewAppComponent0(parentView, parentIndex);
}

const List<dynamic> styles$AppComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_AppComponentHost0 = [
  new StaticNodeDebugInfo([import3.AppComponent], import3.AppComponent, <String, dynamic>{})
];

class _ViewAppComponentHost0 extends DebugAppView<dynamic> {
  ViewAppComponent0 _compView_0;
  import3.AppComponent _AppComponent_0_4;
  static RenderComponentType _renderType;
  _ViewAppComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import8.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_AppComponentHost0) {
    _renderType ??= import10.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$AppComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewAppComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _AppComponent_0_4 = new import3.AppComponent();
    _compView_0.create(_AppComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _AppComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import3.AppComponent) && (0 == nodeIndex))) {
      return _AppComponent_0_4;
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

AppView viewFactory_AppComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewAppComponentHost0(parentView, parentIndex);
}

const ComponentFactory _AppComponentNgFactory = const ComponentFactory('my-app', viewFactory_AppComponentHost0, import3.AppComponent, _AppComponentMetadata);
final ComponentFactory AppComponentNgFactory = _AppComponentNgFactory;
const _AppComponentMetadata = const [];
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;
  _ref0.initReflector();
  _ref1.initReflector();
  _ngRef.registerComponent(
    AppComponent,
    AppComponentNgFactory,
  );
  _ngRef.registerFactory(
    AppComponent,
    () => new AppComponent(),
  );
}

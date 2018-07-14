// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'app_component.dart';
export 'app_component.dart';
import 'package:angular/angular.dart';
import 'package:example08/components/session/session_component.dart';
import 'package:example08/components/jwt/jwt_component.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:example08/components/jwt/jwt_component.template.dart' as _ref1;
import 'package:example08/components/session/session_component.template.dart' as _ref2;

import 'package:angular/src/debug/debug_context.dart';
import 'components/session/session_component.dart' as import1;
import 'components/jwt/jwt_component.dart' as import2;
import 'package:angular/src/debug/debug_app_view.dart';
import 'app_component.dart' as import4;
import 'dart:html' as import5;
import 'components/session/session_component.template.dart' as import6;
import 'components/jwt/jwt_component.template.dart' as import7;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import10;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';

const List<dynamic> styles$AppComponent = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_AppComponent0 = [
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([import1.SessionComponent], import1.SessionComponent, <String, dynamic>{}),
  null,
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([import2.JWTComponent], import2.JWTComponent, <String, dynamic>{}),
  null
];

class ViewAppComponent0 extends DebugAppView<import4.AppComponent> {
  import5.Element _el_1;
  import5.Text _text_2;
  import5.Element _el_4;
  import6.ViewSessionComponent0 _compView_4;
  import1.SessionComponent _SessionComponent_4_4;
  import5.Element _el_6;
  import5.Element _el_8;
  import5.Element _el_10;
  import7.ViewJWTComponent0 _compView_10;
  import2.JWTComponent _JWTComponent_10_4;
  var _expr_0;
  static RenderComponentType _renderType;
  ViewAppComponent0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_AppComponent0) {
    rootEl = import5.document.createElement('my-app');
    _renderType ??= import12.appViewUtils.createRenderType('asset:example08/lib/app_component.dart class AppComponent - inline template', ViewEncapsulation.None, styles$AppComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import5.HtmlElement parentRenderNode = initViewRoot(rootEl);
    import5.Text _text_0 = new import5.Text('      ');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 0, 0);
    var doc = import5.document;
    _el_1 = createAndAppendDbg(this, doc, 'h1', parentRenderNode, 1, 0, 6);
    _text_2 = new import5.Text('');
    _el_1.append(_text_2);
    dbgElm(this, _text_2, 2, 0, 10);
    import5.Text _text_3 = new import5.Text('\n      ');
    parentRenderNode.append(_text_3);
    dbgElm(this, _text_3, 3, 0, 23);
    _compView_4 = new import6.ViewSessionComponent0(this, 4);
    _el_4 = _compView_4.rootEl;
    parentRenderNode.append(_el_4);
    dbgElm(this, _el_4, 4, 1, 6);
    _SessionComponent_4_4 = new import1.SessionComponent();
    _compView_4.create(_SessionComponent_4_4, []);
    import5.Text _text_5 = new import5.Text('\n      ');
    parentRenderNode.append(_text_5);
    dbgElm(this, _text_5, 5, 1, 45);
    _el_6 = createAndAppendDbg(this, doc, 'br', parentRenderNode, 6, 2, 6);
    import5.Text _text_7 = new import5.Text('\n      JWT:\n      ');
    parentRenderNode.append(_text_7);
    dbgElm(this, _text_7, 7, 2, 10);
    _el_8 = createAndAppendDbg(this, doc, 'br', parentRenderNode, 8, 4, 6);
    import5.Text _text_9 = new import5.Text('\n      ');
    parentRenderNode.append(_text_9);
    dbgElm(this, _text_9, 9, 4, 10);
    _compView_10 = new import7.ViewJWTComponent0(this, 10);
    _el_10 = _compView_10.rootEl;
    parentRenderNode.append(_el_10);
    dbgElm(this, _el_10, 10, 5, 6);
    _JWTComponent_10_4 = new import2.JWTComponent();
    _compView_10.create(_JWTComponent_10_4, []);
    import5.Text _text_11 = new import5.Text('\n    ');
    parentRenderNode.append(_text_11);
    dbgElm(this, _text_11, 11, 5, 37);
    init(const [], const [], [_text_0, _el_1, _text_2, _text_3, _el_4, _text_5, _el_6, _text_7, _el_8, _text_9, _el_10, _text_11]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import1.SessionComponent) && (4 == nodeIndex))) {
      return _SessionComponent_4_4;
    }
    if ((identical(token, import2.JWTComponent) && (10 == nodeIndex))) {
      return _JWTComponent_10_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import4.AppComponent _ctx = ctx;
    dbg(2, 0, 10);
    final currVal_0 = import12.interpolate0(_ctx.name);
    if (import12.checkBinding(_expr_0, currVal_0)) {
      _text_2.text = currVal_0;
      _expr_0 = currVal_0;
    }
    _compView_4.detectChanges();
    _compView_10.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_4.destroy();
    _compView_10.destroy();
  }
}

AppView<import4.AppComponent> viewFactory_AppComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewAppComponent0(parentView, parentIndex);
}

const List<dynamic> styles$AppComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_AppComponentHost0 = [
  new StaticNodeDebugInfo([import4.AppComponent], import4.AppComponent, <String, dynamic>{})
];

class _ViewAppComponentHost0 extends DebugAppView<dynamic> {
  ViewAppComponent0 _compView_0;
  import4.AppComponent _AppComponent_0_4;
  static RenderComponentType _renderType;
  _ViewAppComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_AppComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$AppComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewAppComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _AppComponent_0_4 = new import4.AppComponent();
    _compView_0.create(_AppComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _AppComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import4.AppComponent) && (0 == nodeIndex))) {
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

const ComponentFactory _AppComponentNgFactory = const ComponentFactory('my-app', viewFactory_AppComponentHost0, import4.AppComponent, _AppComponentMetadata);
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
  _ref2.initReflector();
  _ngRef.registerComponent(
    AppComponent,
    AppComponentNgFactory,
  );
  _ngRef.registerFactory(
    AppComponent,
    () => new AppComponent(),
  );
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'app_component.dart';
export 'app_component.dart';
import 'package:angular/angular.dart';
import 'package:example08/components/session/session_component.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:example08/components/session/session_component.template.dart' as _ref1;

import 'package:angular/src/debug/debug_context.dart';
import 'components/session/session_component.dart' as import1;
import 'package:angular/src/debug/debug_app_view.dart';
import 'app_component.dart' as import3;
import 'dart:html' as import4;
import 'components/session/session_component.template.dart' as import5;
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
  new StaticNodeDebugInfo([import1.SessionComponent], import1.SessionComponent, <String, dynamic>{}),
  null
];

class ViewAppComponent0 extends DebugAppView<import3.AppComponent> {
  import4.Element _el_1;
  import4.Element _el_4;
  import5.ViewSessionComponent0 _compView_4;
  import1.SessionComponent _SessionComponent_4_4;
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
    import4.Text _text_2 = new import4.Text('TUDo');
    _el_1.append(_text_2);
    dbgElm(this, _text_2, 2, 0, 10);
    import4.Text _text_3 = new import4.Text('\n      Bitte in der gr8en app einloggen <3\n      ');
    parentRenderNode.append(_text_3);
    dbgElm(this, _text_3, 3, 0, 19);
    _compView_4 = new import5.ViewSessionComponent0(this, 4);
    _el_4 = _compView_4.rootEl;
    parentRenderNode.append(_el_4);
    dbgElm(this, _el_4, 4, 2, 6);
    _SessionComponent_4_4 = new import1.SessionComponent();
    _compView_4.create(_SessionComponent_4_4, []);
    import4.Text _text_5 = new import4.Text('\n    ');
    parentRenderNode.append(_text_5);
    dbgElm(this, _text_5, 5, 2, 45);
    init(const [], const [], [_text_0, _el_1, _text_2, _text_3, _el_4, _text_5]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import1.SessionComponent) && (4 == nodeIndex))) {
      return _SessionComponent_4_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    _compView_4.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_4.destroy();
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

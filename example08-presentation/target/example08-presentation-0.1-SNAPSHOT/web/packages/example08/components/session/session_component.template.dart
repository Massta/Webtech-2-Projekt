// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'session_component.dart';
export 'session_component.dart';
import 'package:angular/angular.dart';
import 'package:example08/components/session/login/login_component.dart';
import 'package:example08/components/session/todo/list.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:example08/components/session/login/login_component.template.dart' as _ref1;
import 'package:example08/components/session/todo/list.template.dart' as _ref2;

import 'package:angular/src/debug/debug_context.dart';
import 'login/login_component.dart' as import1;
import 'todo/list.dart' as import2;
import 'package:angular/src/debug/debug_app_view.dart';
import 'session_component.dart' as import4;
import 'dart:html' as import5;
import 'login/login_component.template.dart' as import6;
import 'todo/list.template.dart' as import7;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import10;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import12;
import 'package:angular/angular.dart';

const List<dynamic> styles$SessionComponent = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_SessionComponent0 = [
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([import1.Login], import1.Login, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([import2.TodoList], import2.TodoList, <String, dynamic>{}),
  null
];

class ViewSessionComponent0 extends DebugAppView<import4.SessionComponent> {
  import5.Element _el_1;
  import5.Element _el_4;
  import6.ViewLogin0 _compView_4;
  import1.Login _Login_4_4;
  import5.Element _el_6;
  import7.ViewTodoList0 _compView_6;
  import2.TodoList _TodoList_6_4;
  static RenderComponentType _renderType;
  ViewSessionComponent0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_SessionComponent0) {
    rootEl = import5.document.createElement('session-component');
    _renderType ??= import12.appViewUtils.createRenderType('asset:example08/lib/components/session/session_component.dart class SessionComponent - inline template', ViewEncapsulation.None, styles$SessionComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import5.HtmlElement parentRenderNode = initViewRoot(rootEl);
    import5.Text _text_0 = new import5.Text('      ');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 0, 0);
    var doc = import5.document;
    _el_1 = createAndAppendDbg(this, doc, 'h2', parentRenderNode, 1, 0, 6);
    import5.Text _text_2 = new import5.Text('Session Example');
    _el_1.append(_text_2);
    dbgElm(this, _text_2, 2, 0, 10);
    import5.Text _text_3 = new import5.Text('\n      ');
    parentRenderNode.append(_text_3);
    dbgElm(this, _text_3, 3, 0, 30);
    _compView_4 = new import6.ViewLogin0(this, 4);
    _el_4 = _compView_4.rootEl;
    parentRenderNode.append(_el_4);
    dbgElm(this, _el_4, 4, 1, 6);
    _el_4.className = 'example08block';
    _Login_4_4 = new import1.Login();
    _compView_4.create(_Login_4_4, []);
    import5.Text _text_5 = new import5.Text('\n      ');
    parentRenderNode.append(_text_5);
    dbgElm(this, _text_5, 5, 1, 44);
    _compView_6 = new import7.ViewTodoList0(this, 6);
    _el_6 = _compView_6.rootEl;
    parentRenderNode.append(_el_6);
    dbgElm(this, _el_6, 6, 2, 6);
    _el_6.className = 'example08block';
    _TodoList_6_4 = new import2.TodoList();
    _compView_6.create(_TodoList_6_4, []);
    import5.Text _text_7 = new import5.Text('\n    ');
    parentRenderNode.append(_text_7);
    dbgElm(this, _text_7, 7, 2, 54);
    init(const [], const [], [_text_0, _el_1, _text_2, _text_3, _el_4, _text_5, _el_6, _text_7]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import1.Login) && (4 == nodeIndex))) {
      return _Login_4_4;
    }
    if ((identical(token, import2.TodoList) && (6 == nodeIndex))) {
      return _TodoList_6_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    _compView_4.detectChanges();
    _compView_6.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_4.destroy();
    _compView_6.destroy();
  }
}

AppView<import4.SessionComponent> viewFactory_SessionComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewSessionComponent0(parentView, parentIndex);
}

const List<dynamic> styles$SessionComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_SessionComponentHost0 = [
  new StaticNodeDebugInfo([import4.SessionComponent], import4.SessionComponent, <String, dynamic>{})
];

class _ViewSessionComponentHost0 extends DebugAppView<dynamic> {
  ViewSessionComponent0 _compView_0;
  import4.SessionComponent _SessionComponent_0_4;
  static RenderComponentType _renderType;
  _ViewSessionComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import10.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_SessionComponentHost0) {
    _renderType ??= import12.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$SessionComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewSessionComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _SessionComponent_0_4 = new import4.SessionComponent();
    _compView_0.create(_SessionComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _SessionComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import4.SessionComponent) && (0 == nodeIndex))) {
      return _SessionComponent_0_4;
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

AppView viewFactory_SessionComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewSessionComponentHost0(parentView, parentIndex);
}

const ComponentFactory _SessionComponentNgFactory = const ComponentFactory('session-component', viewFactory_SessionComponentHost0, import4.SessionComponent, _SessionComponentMetadata);
final ComponentFactory SessionComponentNgFactory = _SessionComponentNgFactory;
const _SessionComponentMetadata = const [];
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
    SessionComponent,
    SessionComponentNgFactory,
  );
  _ngRef.registerFactory(
    SessionComponent,
    () => new SessionComponent(),
  );
}

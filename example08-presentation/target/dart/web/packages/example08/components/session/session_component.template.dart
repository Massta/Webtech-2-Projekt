// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'session_component.dart';
export 'session_component.dart';
import 'package:angular/angular.dart';
import 'package:example08/components/session/create/create_component.dart';
import 'package:example08/components/session/login/login_component.dart';
import 'package:example08/components/session/newest/newest_component.dart';
import 'package:example08/components/session/todo/list.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:example08/components/session/create/create_component.template.dart' as _ref1;
import 'package:example08/components/session/login/login_component.template.dart' as _ref2;
import 'package:example08/components/session/newest/newest_component.template.dart' as _ref3;
import 'package:example08/components/session/todo/list.template.dart' as _ref4;

import 'package:angular/src/debug/debug_context.dart';
import 'login/login_component.dart' as import1;
import 'newest/newest_component.dart' as import2;
import 'create/create_component.dart' as import3;
import 'todo/list.dart' as import4;
import 'package:angular/src/debug/debug_app_view.dart';
import 'session_component.dart' as import6;
import 'dart:html' as import7;
import 'login/login_component.template.dart' as import8;
import 'newest/newest_component.template.dart' as import9;
import 'create/create_component.template.dart' as import10;
import 'todo/list.template.dart' as import11;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import14;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import16;
import 'package:angular/angular.dart';

const List<dynamic> styles$SessionComponent = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_SessionComponent0 = [
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([import1.Login], import1.Login, <String, dynamic>{}),
  null,
  null,
  null,
  new StaticNodeDebugInfo([import2.ShowNewest], import2.ShowNewest, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([import3.CreateNews], import3.CreateNews, <String, dynamic>{}),
  null,
  null,
  new StaticNodeDebugInfo([import4.TodoList], import4.TodoList, <String, dynamic>{}),
  null
];

class ViewSessionComponent0 extends DebugAppView<import6.SessionComponent> {
  import7.Element _el_1;
  import7.Element _el_4;
  import8.ViewLogin0 _compView_4;
  import1.Login _Login_4_4;
  import7.DivElement _el_6;
  import7.Element _el_8;
  import9.ViewShowNewest0 _compView_8;
  import2.ShowNewest _ShowNewest_8_4;
  import7.Element _el_10;
  import10.ViewCreateNews0 _compView_10;
  import3.CreateNews _CreateNews_10_4;
  import7.Element _el_13;
  import11.ViewTodoList0 _compView_13;
  import4.TodoList _TodoList_13_4;
  static RenderComponentType _renderType;
  ViewSessionComponent0(AppView<dynamic> parentView, num parentIndex) : super(import14.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_SessionComponent0) {
    rootEl = import7.document.createElement('session-component');
    _renderType ??= import16.appViewUtils.createRenderType('asset:example08/lib/components/session/session_component.dart class SessionComponent - inline template', ViewEncapsulation.None, styles$SessionComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import7.HtmlElement parentRenderNode = initViewRoot(rootEl);
    import7.Text _text_0 = new import7.Text('      ');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 0, 0);
    var doc = import7.document;
    _el_1 = createAndAppendDbg(this, doc, 'h2', parentRenderNode, 1, 0, 6);
    import7.Text _text_2 = new import7.Text('Session Example');
    _el_1.append(_text_2);
    dbgElm(this, _text_2, 2, 0, 10);
    import7.Text _text_3 = new import7.Text('\n      ');
    parentRenderNode.append(_text_3);
    dbgElm(this, _text_3, 3, 0, 30);
    _compView_4 = new import8.ViewLogin0(this, 4);
    _el_4 = _compView_4.rootEl;
    parentRenderNode.append(_el_4);
    dbgElm(this, _el_4, 4, 1, 6);
    _el_4.className = 'example08block';
    _Login_4_4 = new import1.Login();
    _compView_4.create(_Login_4_4, []);
    import7.Text _text_5 = new import7.Text('\n      ');
    parentRenderNode.append(_text_5);
    dbgElm(this, _text_5, 5, 1, 44);
    _el_6 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 6, 2, 6);
    _el_6.className = 'alert alert-danger';
    import7.Text _text_7 = new import7.Text('\n        Ignorieren :]\n        ');
    _el_6.append(_text_7);
    dbgElm(this, _text_7, 7, 2, 38);
    _compView_8 = new import9.ViewShowNewest0(this, 8);
    _el_8 = _compView_8.rootEl;
    _el_6.append(_el_8);
    dbgElm(this, _el_8, 8, 4, 8);
    _el_8.className = 'example08block';
    _ShowNewest_8_4 = new import2.ShowNewest();
    _compView_8.create(_ShowNewest_8_4, []);
    import7.Text _text_9 = new import7.Text('\n        ');
    _el_6.append(_text_9);
    dbgElm(this, _text_9, 9, 4, 58);
    _compView_10 = new import10.ViewCreateNews0(this, 10);
    _el_10 = _compView_10.rootEl;
    _el_6.append(_el_10);
    dbgElm(this, _el_10, 10, 5, 8);
    _el_10.className = 'example08block';
    _CreateNews_10_4 = new import3.CreateNews();
    _compView_10.create(_CreateNews_10_4, []);
    import7.Text _text_11 = new import7.Text('\n      ');
    _el_6.append(_text_11);
    dbgElm(this, _text_11, 11, 5, 58);
    import7.Text _text_12 = new import7.Text('\n      ');
    parentRenderNode.append(_text_12);
    dbgElm(this, _text_12, 12, 6, 12);
    _compView_13 = new import11.ViewTodoList0(this, 13);
    _el_13 = _compView_13.rootEl;
    parentRenderNode.append(_el_13);
    dbgElm(this, _el_13, 13, 7, 6);
    _el_13.className = 'example08block';
    _TodoList_13_4 = new import4.TodoList();
    _compView_13.create(_TodoList_13_4, []);
    import7.Text _text_14 = new import7.Text('\n    ');
    parentRenderNode.append(_text_14);
    dbgElm(this, _text_14, 14, 7, 54);
    init(const [], const [], [_text_0, _el_1, _text_2, _text_3, _el_4, _text_5, _el_6, _text_7, _el_8, _text_9, _el_10, _text_11, _text_12, _el_13, _text_14]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import1.Login) && (4 == nodeIndex))) {
      return _Login_4_4;
    }
    if ((identical(token, import2.ShowNewest) && (8 == nodeIndex))) {
      return _ShowNewest_8_4;
    }
    if ((identical(token, import3.CreateNews) && (10 == nodeIndex))) {
      return _CreateNews_10_4;
    }
    if ((identical(token, import4.TodoList) && (13 == nodeIndex))) {
      return _TodoList_13_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    _compView_4.detectChanges();
    _compView_8.detectChanges();
    _compView_10.detectChanges();
    _compView_13.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_4.destroy();
    _compView_8.destroy();
    _compView_10.destroy();
    _compView_13.destroy();
  }
}

AppView<import6.SessionComponent> viewFactory_SessionComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewSessionComponent0(parentView, parentIndex);
}

const List<dynamic> styles$SessionComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_SessionComponentHost0 = [
  new StaticNodeDebugInfo([import6.SessionComponent], import6.SessionComponent, <String, dynamic>{})
];

class _ViewSessionComponentHost0 extends DebugAppView<dynamic> {
  ViewSessionComponent0 _compView_0;
  import6.SessionComponent _SessionComponent_0_4;
  static RenderComponentType _renderType;
  _ViewSessionComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import14.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_SessionComponentHost0) {
    _renderType ??= import16.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$SessionComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewSessionComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _SessionComponent_0_4 = new import6.SessionComponent();
    _compView_0.create(_SessionComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _SessionComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import6.SessionComponent) && (0 == nodeIndex))) {
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

const ComponentFactory _SessionComponentNgFactory = const ComponentFactory('session-component', viewFactory_SessionComponentHost0, import6.SessionComponent, _SessionComponentMetadata);
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
  _ref3.initReflector();
  _ref4.initReflector();
  _ngRef.registerComponent(
    SessionComponent,
    SessionComponentNgFactory,
  );
  _ngRef.registerFactory(
    SessionComponent,
    () => new SessionComponent(),
  );
}

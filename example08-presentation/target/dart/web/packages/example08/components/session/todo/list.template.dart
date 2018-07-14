// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'list.dart';
export 'list.dart';
import 'dart:convert';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:example08/model/todo.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:example08/model/todo.template.dart' as _ref1;

import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'list.dart' as import4;
import 'dart:html' as import5;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import9;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import11;
import 'package:angular/angular.dart';
import 'package:angular/src/common/directives/ng_for.dart' as import13;

const List<dynamic> styles$TodoList = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_TodoList0 = [
  null,
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null,
  null,
  null
];

class ViewTodoList0 extends DebugAppView<import4.TodoList> {
  import5.DivElement _el_0;
  import5.Element _el_2;
  ViewContainer _appEl_5;
  NgIf _NgIf_5_7;
  ViewContainer _appEl_7;
  NgIf _NgIf_7_7;
  import5.ButtonElement _el_9;
  static RenderComponentType _renderType;
  ViewTodoList0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_TodoList0) {
    rootEl = import5.document.createElement('list-todos');
    _renderType ??= import11.appViewUtils.createRenderType('package:example08/components/session/todo/list.html', ViewEncapsulation.None, styles$TodoList);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import5.HtmlElement parentRenderNode = initViewRoot(rootEl);
    var doc = import5.document;
    _el_0 = createAndAppendDbg(this, doc, 'div', parentRenderNode, 0, 0, 0);
    import5.Text _text_1 = new import5.Text('\n    ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 0, 5);
    _el_2 = createAndAppendDbg(this, doc, 'h3', _el_0, 2, 1, 4);
    import5.Text _text_3 = new import5.Text('Todos zeigen');
    _el_2.append(_text_3);
    dbgElm(this, _text_3, 3, 1, 8);
    import5.Text _text_4 = new import5.Text('\n    ');
    _el_0.append(_text_4);
    dbgElm(this, _text_4, 4, 1, 25);
    var _anchor_5 = ngAnchor.clone(false);
    _el_0.append(_anchor_5);
    dbgElm(this, _anchor_5, 5, 2, 4);
    _appEl_5 = new ViewContainer(5, 0, this, _anchor_5);
    TemplateRef _TemplateRef_5_6 = new TemplateRef(_appEl_5, viewFactory_TodoList1);
    _NgIf_5_7 = new NgIf(_appEl_5, _TemplateRef_5_6);
    import5.Text _text_6 = new import5.Text('\n    ');
    _el_0.append(_text_6);
    dbgElm(this, _text_6, 6, 13, 10);
    var _anchor_7 = ngAnchor.clone(false);
    _el_0.append(_anchor_7);
    dbgElm(this, _anchor_7, 7, 14, 4);
    _appEl_7 = new ViewContainer(7, 0, this, _anchor_7);
    TemplateRef _TemplateRef_7_6 = new TemplateRef(_appEl_7, viewFactory_TodoList3);
    _NgIf_7_7 = new NgIf(_appEl_7, _TemplateRef_7_6);
    import5.Text _text_8 = new import5.Text('\n    ');
    _el_0.append(_text_8);
    dbgElm(this, _text_8, 8, 16, 10);
    _el_9 = createAndAppendDbg(this, doc, 'button', _el_0, 9, 17, 4);
    createAttr(_el_9, 'type', 'button');
    import5.Text _text_10 = new import5.Text('Todos anzeigen');
    _el_9.append(_text_10);
    dbgElm(this, _text_10, 10, 17, 54);
    import5.Text _text_11 = new import5.Text('\n');
    _el_0.append(_text_11);
    dbgElm(this, _text_11, 11, 17, 77);
    _el_9.addEventListener('click', eventHandler1(ctx.loadTodos));
    init(const [], const [], [_el_0, _text_1, _el_2, _text_3, _text_4, _anchor_5, _text_6, _anchor_7, _text_8, _el_9, _text_10, _text_11]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import4.TodoList _ctx = ctx;
    dbg(5, 2, 9);
    _NgIf_5_7.ngIf = _ctx.hasBeenLoaded();
    dbg(7, 14, 9);
    _NgIf_7_7.ngIf = !_ctx.hasBeenLoaded();
    _appEl_5.detectChangesInNestedViews();
    _appEl_7.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_5.destroyNestedViews();
    _appEl_7.destroyNestedViews();
  }
}

AppView<import4.TodoList> viewFactory_TodoList0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewTodoList0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_TodoList1 = [
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, import13.NgFor], null, <String, dynamic>{}),
  null
];

class _ViewTodoList1 extends DebugAppView<import4.TodoList> {
  import5.DivElement _el_0;
  ViewContainer _appEl_2;
  import13.NgFor _NgFor_2_7;
  var _expr_0;
  _ViewTodoList1(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_TodoList1) {
    componentType = ViewTodoList0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import5.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 2, 4);
    import5.Text _text_1 = new import5.Text('\n        ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 2, 33);
    var _anchor_2 = ngAnchor.clone(false);
    _el_0.append(_anchor_2);
    dbgElm(this, _anchor_2, 2, 3, 8);
    _appEl_2 = new ViewContainer(2, 0, this, _anchor_2);
    TemplateRef _TemplateRef_2_6 = new TemplateRef(_appEl_2, viewFactory_TodoList2);
    _NgFor_2_7 = new import13.NgFor(_appEl_2, _TemplateRef_2_6);
    import5.Text _text_3 = new import5.Text('\n    ');
    _el_0.append(_text_3);
    dbgElm(this, _text_3, 3, 12, 14);
    init([_el_0], const [], [_el_0, _text_1, _anchor_2, _text_3]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import4.TodoList _ctx = ctx;
    dbg(2, 3, 13);
    final currVal_0 = _ctx.loaded;
    if (import11.checkBinding(_expr_0, currVal_0)) {
      _NgFor_2_7.ngForOf = currVal_0;
      _expr_0 = currVal_0;
    }
    if (!import11.AppViewUtils.throwOnChanges) {
      _NgFor_2_7.ngDoCheck();
    }
    _appEl_2.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_2.destroyNestedViews();
  }
}

AppView<import4.TodoList> viewFactory_TodoList1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewTodoList1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_TodoList2 = [null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null];

class _ViewTodoList2 extends DebugAppView<import4.TodoList> {
  import5.DivElement _el_0;
  import5.Element _el_2;
  import5.Element _el_4;
  import5.Element _el_7;
  import5.Text _text_8;
  import5.Element _el_10;
  import5.Element _el_13;
  import5.Text _text_14;
  import5.Element _el_16;
  import5.Element _el_19;
  import5.Text _text_20;
  var _expr_0;
  var _expr_1;
  var _expr_2;
  _ViewTodoList2(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {'\$implicit': null}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_TodoList2) {
    componentType = ViewTodoList0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import5.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 3, 8);
    import5.Text _text_1 = new import5.Text('\n            ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 3, 42);
    _el_2 = createAndAppendDbg(this, doc, 'dl', _el_0, 2, 4, 12);
    import5.Text _text_3 = new import5.Text('\n                ');
    _el_2.append(_text_3);
    dbgElm(this, _text_3, 3, 4, 16);
    _el_4 = createAndAppendDbg(this, doc, 'dt', _el_2, 4, 5, 16);
    import5.Text _text_5 = new import5.Text('Titel');
    _el_4.append(_text_5);
    dbgElm(this, _text_5, 5, 5, 20);
    import5.Text _text_6 = new import5.Text('\n                ');
    _el_2.append(_text_6);
    dbgElm(this, _text_6, 6, 5, 30);
    _el_7 = createAndAppendDbg(this, doc, 'dd', _el_2, 7, 6, 16);
    _text_8 = new import5.Text('');
    _el_7.append(_text_8);
    dbgElm(this, _text_8, 8, 6, 20);
    import5.Text _text_9 = new import5.Text('\n                ');
    _el_2.append(_text_9);
    dbgElm(this, _text_9, 9, 6, 39);
    _el_10 = createAndAppendDbg(this, doc, 'dt', _el_2, 10, 7, 16);
    import5.Text _text_11 = new import5.Text('Beschreibung');
    _el_10.append(_text_11);
    dbgElm(this, _text_11, 11, 7, 20);
    import5.Text _text_12 = new import5.Text('\n                ');
    _el_2.append(_text_12);
    dbgElm(this, _text_12, 12, 7, 37);
    _el_13 = createAndAppendDbg(this, doc, 'dd', _el_2, 13, 8, 16);
    _text_14 = new import5.Text('');
    _el_13.append(_text_14);
    dbgElm(this, _text_14, 14, 8, 20);
    import5.Text _text_15 = new import5.Text('\n                ');
    _el_2.append(_text_15);
    dbgElm(this, _text_15, 15, 8, 45);
    _el_16 = createAndAppendDbg(this, doc, 'dt', _el_2, 16, 9, 16);
    import5.Text _text_17 = new import5.Text('UserId');
    _el_16.append(_text_17);
    dbgElm(this, _text_17, 17, 9, 20);
    import5.Text _text_18 = new import5.Text('\n                ');
    _el_2.append(_text_18);
    dbgElm(this, _text_18, 18, 9, 31);
    _el_19 = createAndAppendDbg(this, doc, 'dd', _el_2, 19, 10, 16);
    _text_20 = new import5.Text('');
    _el_19.append(_text_20);
    dbgElm(this, _text_20, 20, 10, 20);
    import5.Text _text_21 = new import5.Text('\n            ');
    _el_2.append(_text_21);
    dbgElm(this, _text_21, 21, 10, 40);
    import5.Text _text_22 = new import5.Text('\n        ');
    _el_0.append(_text_22);
    dbgElm(this, _text_22, 22, 11, 17);
    init([_el_0], const [], [_el_0, _text_1, _el_2, _text_3, _el_4, _text_5, _text_6, _el_7, _text_8, _text_9, _el_10, _text_11, _text_12, _el_13, _text_14, _text_15, _el_16, _text_17, _text_18, _el_19, _text_20, _text_21, _text_22]);
    return null;
  }

  @override
  void detectChangesInternal() {
    dbg(8, 6, 20);
    final currVal_0 = import11.interpolate0(locals['\$implicit'].title);
    if (import11.checkBinding(_expr_0, currVal_0)) {
      _text_8.text = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(14, 8, 20);
    final currVal_1 = import11.interpolate0(locals['\$implicit'].description);
    if (import11.checkBinding(_expr_1, currVal_1)) {
      _text_14.text = currVal_1;
      _expr_1 = currVal_1;
    }
    dbg(20, 10, 20);
    final currVal_2 = import11.interpolate0(locals['\$implicit'].userId);
    if (import11.checkBinding(_expr_2, currVal_2)) {
      _text_20.text = currVal_2;
      _expr_2 = currVal_2;
    }
  }
}

AppView<import4.TodoList> viewFactory_TodoList2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewTodoList2(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_TodoList3 = [null, null];

class _ViewTodoList3 extends DebugAppView<import4.TodoList> {
  import5.DivElement _el_0;
  _ViewTodoList3(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_TodoList3) {
    componentType = ViewTodoList0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import5.document;
    _el_0 = doc.createElement('div');
    dbgElm(this, _el_0, 0, 14, 4);
    import5.Text _text_1 = new import5.Text('\n        Loading...\n    ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 14, 34);
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }
}

AppView<import4.TodoList> viewFactory_TodoList3(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewTodoList3(parentView, parentIndex);
}

const List<dynamic> styles$TodoListHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_TodoListHost0 = [
  new StaticNodeDebugInfo([import4.TodoList], import4.TodoList, <String, dynamic>{})
];

class _ViewTodoListHost0 extends DebugAppView<dynamic> {
  ViewTodoList0 _compView_0;
  import4.TodoList _TodoList_0_4;
  static RenderComponentType _renderType;
  _ViewTodoListHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_TodoListHost0) {
    _renderType ??= import11.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$TodoListHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewTodoList0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _TodoList_0_4 = new import4.TodoList();
    _compView_0.create(_TodoList_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _TodoList_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import4.TodoList) && (0 == nodeIndex))) {
      return _TodoList_0_4;
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

AppView viewFactory_TodoListHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewTodoListHost0(parentView, parentIndex);
}

const ComponentFactory _TodoListNgFactory = const ComponentFactory('list-todos', viewFactory_TodoListHost0, import4.TodoList, _TodoListMetadata);
final ComponentFactory TodoListNgFactory = _TodoListNgFactory;
const _TodoListMetadata = const [];
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;
  _ref0.initReflector();
  _ref1.initReflector();
  _ngRef.registerComponent(
    TodoList,
    TodoListNgFactory,
  );
  _ngRef.registerFactory(
    TodoList,
    () => new TodoList(),
  );
}

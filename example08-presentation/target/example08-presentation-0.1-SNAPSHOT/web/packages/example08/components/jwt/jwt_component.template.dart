// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'jwt_component.dart';
export 'jwt_component.dart';
import 'package:angular/angular.dart';
import 'package:example08/components/jwt/create/create_component.dart';
import 'package:example08/components/jwt/login/login_component.dart';
import 'package:example08/components/jwt/newest/newest_component.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:example08/components/jwt/create/create_component.template.dart' as _ref1;
import 'package:example08/components/jwt/login/login_component.template.dart' as _ref2;
import 'package:example08/components/jwt/newest/newest_component.template.dart' as _ref3;

import 'package:angular/src/debug/debug_context.dart';
import 'login/login_component.dart' as import1;
import 'newest/newest_component.dart' as import2;
import 'create/create_component.dart' as import3;
import 'package:angular/src/debug/debug_app_view.dart';
import 'jwt_component.dart' as import5;
import 'dart:html' as import6;
import 'login/login_component.template.dart' as import7;
import 'newest/newest_component.template.dart' as import8;
import 'create/create_component.template.dart' as import9;
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import12;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import14;
import 'package:angular/angular.dart';

const List<dynamic> styles$JWTComponent = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_JWTComponent0 = [
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([import1.Login], import1.Login, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([import2.ShowNewest], import2.ShowNewest, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([import3.CreateNews], import3.CreateNews, <String, dynamic>{}),
  null
];

class ViewJWTComponent0 extends DebugAppView<import5.JWTComponent> {
  import6.Element _el_1;
  import6.Element _el_4;
  import7.ViewLogin0 _compView_4;
  import1.Login _Login_4_4;
  import6.Element _el_6;
  import8.ViewShowNewest0 _compView_6;
  import2.ShowNewest _ShowNewest_6_4;
  import6.Element _el_8;
  import9.ViewCreateNews0 _compView_8;
  import3.CreateNews _CreateNews_8_4;
  String _expr_0;
  String _expr_1;
  static RenderComponentType _renderType;
  ViewJWTComponent0(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_JWTComponent0) {
    rootEl = import6.document.createElement('jwt-component');
    _renderType ??= import14.appViewUtils.createRenderType('asset:example08/lib/components/jwt/jwt_component.dart class JWTComponent - inline template', ViewEncapsulation.None, styles$JWTComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    final import6.HtmlElement parentRenderNode = initViewRoot(rootEl);
    import6.Text _text_0 = new import6.Text('      ');
    parentRenderNode.append(_text_0);
    dbgElm(this, _text_0, 0, 0, 0);
    var doc = import6.document;
    _el_1 = createAndAppendDbg(this, doc, 'h2', parentRenderNode, 1, 0, 6);
    import6.Text _text_2 = new import6.Text('JWT Example');
    _el_1.append(_text_2);
    dbgElm(this, _text_2, 2, 0, 10);
    import6.Text _text_3 = new import6.Text('\n      ');
    parentRenderNode.append(_text_3);
    dbgElm(this, _text_3, 3, 0, 26);
    _compView_4 = new import7.ViewLogin0(this, 4);
    _el_4 = _compView_4.rootEl;
    parentRenderNode.append(_el_4);
    dbgElm(this, _el_4, 4, 1, 6);
    _el_4.className = 'example08block';
    _Login_4_4 = new import1.Login();
    _compView_4.create(_Login_4_4, []);
    import6.Text _text_5 = new import6.Text('\n      ');
    parentRenderNode.append(_text_5);
    dbgElm(this, _text_5, 5, 1, 73);
    _compView_6 = new import8.ViewShowNewest0(this, 6);
    _el_6 = _compView_6.rootEl;
    parentRenderNode.append(_el_6);
    dbgElm(this, _el_6, 6, 2, 6);
    _el_6.className = 'example08block';
    _ShowNewest_6_4 = new import2.ShowNewest();
    _compView_6.create(_ShowNewest_6_4, []);
    import6.Text _text_7 = new import6.Text('\n      ');
    parentRenderNode.append(_text_7);
    dbgElm(this, _text_7, 7, 2, 72);
    _compView_8 = new import9.ViewCreateNews0(this, 8);
    _el_8 = _compView_8.rootEl;
    parentRenderNode.append(_el_8);
    dbgElm(this, _el_8, 8, 3, 6);
    _el_8.className = 'example08block';
    _CreateNews_8_4 = new import3.CreateNews();
    _compView_8.create(_CreateNews_8_4, []);
    import6.Text _text_9 = new import6.Text('\n    ');
    parentRenderNode.append(_text_9);
    dbgElm(this, _text_9, 9, 3, 72);
    final subscription_0 = _Login_4_4.tokenOutput.listen(eventHandler1(_handle_tokenOutput_4_0));
    init(const [], [subscription_0], [_text_0, _el_1, _text_2, _text_3, _el_4, _text_5, _el_6, _text_7, _el_8, _text_9]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import1.Login) && (4 == nodeIndex))) {
      return _Login_4_4;
    }
    if ((identical(token, import2.ShowNewest) && (6 == nodeIndex))) {
      return _ShowNewest_6_4;
    }
    if ((identical(token, import3.CreateNews) && (8 == nodeIndex))) {
      return _CreateNews_8_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import5.JWTComponent _ctx = ctx;
    dbg(6, 2, 42);
    final currVal_0 = _ctx.token;
    if (import14.checkBinding(_expr_0, currVal_0)) {
      _ShowNewest_6_4.token = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(8, 3, 42);
    final currVal_1 = _ctx.token;
    if (import14.checkBinding(_expr_1, currVal_1)) {
      _CreateNews_8_4.token = currVal_1;
      _expr_1 = currVal_1;
    }
    _compView_4.detectChanges();
    _compView_6.detectChanges();
    _compView_8.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_4.destroy();
    _compView_6.destroy();
    _compView_8.destroy();
  }

  void _handle_tokenOutput_4_0($event) {
    dbg(4, 1, 36);
    ctx.token = $event;
  }
}

AppView<import5.JWTComponent> viewFactory_JWTComponent0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewJWTComponent0(parentView, parentIndex);
}

const List<dynamic> styles$JWTComponentHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_JWTComponentHost0 = [
  new StaticNodeDebugInfo([import5.JWTComponent], import5.JWTComponent, <String, dynamic>{})
];

class _ViewJWTComponentHost0 extends DebugAppView<dynamic> {
  ViewJWTComponent0 _compView_0;
  import5.JWTComponent _JWTComponent_0_4;
  static RenderComponentType _renderType;
  _ViewJWTComponentHost0(AppView<dynamic> parentView, num parentIndex) : super(import12.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_JWTComponentHost0) {
    _renderType ??= import14.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$JWTComponentHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewJWTComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _JWTComponent_0_4 = new import5.JWTComponent();
    _compView_0.create(_JWTComponent_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _JWTComponent_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import5.JWTComponent) && (0 == nodeIndex))) {
      return _JWTComponent_0_4;
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

AppView viewFactory_JWTComponentHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewJWTComponentHost0(parentView, parentIndex);
}

const ComponentFactory _JWTComponentNgFactory = const ComponentFactory('jwt-component', viewFactory_JWTComponentHost0, import5.JWTComponent, _JWTComponentMetadata);
final ComponentFactory JWTComponentNgFactory = _JWTComponentNgFactory;
const _JWTComponentMetadata = const [];
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
  _ngRef.registerComponent(
    JWTComponent,
    JWTComponentNgFactory,
  );
  _ngRef.registerFactory(
    JWTComponent,
    () => new JWTComponent(),
  );
}

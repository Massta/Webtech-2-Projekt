// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: TemplateGenerator
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'login_component.dart';
export 'login_component.dart';
import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
// Required for initReflector().
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'package:angular/angular.template.dart' as _ref0;
import 'package:angular_forms/angular_forms.template.dart' as _ref1;

import 'package:angular/src/debug/debug_context.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/debug/debug_app_view.dart';
import 'login_component.dart' as import4;
import 'dart:html' as import5;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/app_view.dart';
import 'package:angular/src/core/linker/view_type.dart' as import9;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'package:angular/src/core/linker/app_view_utils.dart' as import11;
import 'package:angular/angular.dart';
import 'package:angular_forms/src/directives/ng_form.dart' as import13;
import 'package:angular_forms/src/directives/control_container.dart' as import14;
import 'package:angular_forms/src/directives/default_value_accessor.dart' as import15;
import 'package:angular_forms/src/directives/ng_model.dart' as import16;
import 'package:angular_forms/src/directives/validators.dart' as import17;
import 'package:angular_forms/src/directives/ng_control.dart' as import18;
import 'package:angular_forms/src/directives/ng_model.template.dart' as import19;
import 'package:angular_forms/src/validators.dart' as import20;

const List<dynamic> styles$Login = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_Login0 = [
  null,
  null,
  null,
  null,
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  new StaticNodeDebugInfo([TemplateRef, NgIf], null, <String, dynamic>{}),
  null,
  null
];

class ViewLogin0 extends DebugAppView<import4.Login> {
  import5.DivElement _el_0;
  import5.Element _el_2;
  ViewContainer _appEl_5;
  NgIf _NgIf_5_7;
  ViewContainer _appEl_7;
  NgIf _NgIf_7_7;
  static RenderComponentType _renderType;
  ViewLogin0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.COMPONENT, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_Login0) {
    rootEl = import5.document.createElement('login');
    _renderType ??= import11.appViewUtils.createRenderType('package:example08/components/basic/login/login_component.html', ViewEncapsulation.None, styles$Login);
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
    import5.Text _text_3 = new import5.Text('Login');
    _el_2.append(_text_3);
    dbgElm(this, _text_3, 3, 1, 8);
    import5.Text _text_4 = new import5.Text('\n    ');
    _el_0.append(_text_4);
    dbgElm(this, _text_4, 4, 1, 18);
    var _anchor_5 = ngAnchor.clone(false);
    _el_0.append(_anchor_5);
    dbgElm(this, _anchor_5, 5, 2, 4);
    _appEl_5 = new ViewContainer(5, 0, this, _anchor_5);
    TemplateRef _TemplateRef_5_6 = new TemplateRef(_appEl_5, viewFactory_Login1);
    _NgIf_5_7 = new NgIf(_appEl_5, _TemplateRef_5_6);
    import5.Text _text_6 = new import5.Text('\n\n    ');
    _el_0.append(_text_6);
    dbgElm(this, _text_6, 6, 18, 11);
    var _anchor_7 = ngAnchor.clone(false);
    _el_0.append(_anchor_7);
    dbgElm(this, _anchor_7, 7, 20, 4);
    _appEl_7 = new ViewContainer(7, 0, this, _anchor_7);
    TemplateRef _TemplateRef_7_6 = new TemplateRef(_appEl_7, viewFactory_Login2);
    _NgIf_7_7 = new NgIf(_appEl_7, _TemplateRef_7_6);
    import5.Text _text_8 = new import5.Text('\n');
    _el_0.append(_text_8);
    dbgElm(this, _text_8, 8, 20, 87);
    import5.Text _text_9 = new import5.Text('\n');
    parentRenderNode.append(_text_9);
    dbgElm(this, _text_9, 9, 21, 6);
    init(const [], const [], [_el_0, _text_1, _el_2, _text_3, _text_4, _anchor_5, _text_6, _anchor_7, _text_8, _text_9]);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import4.Login _ctx = ctx;
    dbg(5, 2, 10);
    _NgIf_5_7.ngIf = !_ctx.isLoggedIn();
    dbg(7, 20, 12);
    _NgIf_7_7.ngIf = _ctx.isLoggedIn();
    _appEl_5.detectChangesInNestedViews();
    _appEl_7.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_5.destroyNestedViews();
    _appEl_7.destroyNestedViews();
  }
}

AppView<import4.Login> viewFactory_Login0(AppView<dynamic> parentView, num parentIndex) {
  return new ViewLogin0(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_Login1 = [
  new StaticNodeDebugInfo([import13.NgForm, import14.ControlContainer], null, <String, dynamic>{}),
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
  new StaticNodeDebugInfo([const OpaqueToken('NgValidators'), import15.DefaultValueAccessor, const OpaqueToken('NgValueAccessor'), import16.NgModel, import17.RequiredValidator, import18.NgControl], null, <String, dynamic>{}),
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
  new StaticNodeDebugInfo([const OpaqueToken('NgValidators'), import15.DefaultValueAccessor, const OpaqueToken('NgValueAccessor'), import16.NgModel, import17.RequiredValidator, import18.NgControl], null, <String, dynamic>{}),
  null,
  null,
  null,
  null,
  null,
  null
];

class _ViewLogin1 extends DebugAppView<import4.Login> {
  import5.FormElement _el_0;
  import13.NgForm _NgForm_0_4;
  import5.Element _el_2;
  import5.Element _el_4;
  import5.Element _el_6;
  import5.Element _el_10;
  import5.InputElement _el_12;
  List<dynamic> _const_OpaqueToken__NgValidators___12_4;
  import15.DefaultValueAccessor _DefaultValueAccessor_12_5;
  List<dynamic> _const_OpaqueToken__NgValueAccessor___12_6;
  import19.NgModelNgCd _NgModel_12_7;
  import17.RequiredValidator _RequiredValidator_12_8;
  import5.Element _el_15;
  import5.Element _el_17;
  import5.Element _el_21;
  import5.InputElement _el_23;
  List<dynamic> _const_OpaqueToken__NgValidators___23_4;
  import15.DefaultValueAccessor _DefaultValueAccessor_23_5;
  List<dynamic> _const_OpaqueToken__NgValueAccessor___23_6;
  import19.NgModelNgCd _NgModel_23_7;
  import17.RequiredValidator _RequiredValidator_23_8;
  import5.ButtonElement _el_27;
  var _expr_0;
  var _expr_1;
  _ViewLogin1(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_Login1) {
    componentType = ViewLogin0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import5.document;
    _el_0 = doc.createElement('form');
    dbgElm(this, _el_0, 0, 2, 4);
    _NgForm_0_4 = new import13.NgForm(null);
    import5.Text _text_1 = new import5.Text('\n        ');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 2, 32);
    _el_2 = createAndAppendDbg(this, doc, 'dl', _el_0, 2, 3, 8);
    import5.Text _text_3 = new import5.Text('\n            ');
    _el_2.append(_text_3);
    dbgElm(this, _text_3, 3, 3, 12);
    _el_4 = createAndAppendDbg(this, doc, 'dt', _el_2, 4, 4, 12);
    import5.Text _text_5 = new import5.Text('\n                ');
    _el_4.append(_text_5);
    dbgElm(this, _text_5, 5, 4, 16);
    _el_6 = createAndAppendDbg(this, doc, 'label', _el_4, 6, 5, 16);
    import5.Text _text_7 = new import5.Text('Username');
    _el_6.append(_text_7);
    dbgElm(this, _text_7, 7, 5, 23);
    import5.Text _text_8 = new import5.Text('\n            ');
    _el_4.append(_text_8);
    dbgElm(this, _text_8, 8, 5, 39);
    import5.Text _text_9 = new import5.Text('\n            ');
    _el_2.append(_text_9);
    dbgElm(this, _text_9, 9, 6, 17);
    _el_10 = createAndAppendDbg(this, doc, 'dd', _el_2, 10, 7, 12);
    import5.Text _text_11 = new import5.Text('\n                ');
    _el_10.append(_text_11);
    dbgElm(this, _text_11, 11, 7, 16);
    _el_12 = createAndAppendDbg(this, doc, 'input', _el_10, 12, 8, 16);
    createAttr(_el_12, 'required', '');
    createAttr(_el_12, 'type', 'text');
    _const_OpaqueToken__NgValidators___12_4 = [import20.Validators.required];
    _DefaultValueAccessor_12_5 = new import15.DefaultValueAccessor(_el_12);
    _const_OpaqueToken__NgValueAccessor___12_6 = [_DefaultValueAccessor_12_5];
    _NgModel_12_7 = new import19.NgModelNgCd(new import16.NgModel(_const_OpaqueToken__NgValidators___12_4, _const_OpaqueToken__NgValueAccessor___12_6));
    _RequiredValidator_12_8 = new import17.RequiredValidator();
    import5.Text _text_13 = new import5.Text('\n            ');
    _el_10.append(_text_13);
    dbgElm(this, _text_13, 13, 8, 67);
    import5.Text _text_14 = new import5.Text('\n            ');
    _el_2.append(_text_14);
    dbgElm(this, _text_14, 14, 9, 17);
    _el_15 = createAndAppendDbg(this, doc, 'dt', _el_2, 15, 10, 12);
    import5.Text _text_16 = new import5.Text('\n                ');
    _el_15.append(_text_16);
    dbgElm(this, _text_16, 16, 10, 16);
    _el_17 = createAndAppendDbg(this, doc, 'label', _el_15, 17, 11, 16);
    import5.Text _text_18 = new import5.Text('Password');
    _el_17.append(_text_18);
    dbgElm(this, _text_18, 18, 11, 23);
    import5.Text _text_19 = new import5.Text('\n            ');
    _el_15.append(_text_19);
    dbgElm(this, _text_19, 19, 11, 39);
    import5.Text _text_20 = new import5.Text('\n            ');
    _el_2.append(_text_20);
    dbgElm(this, _text_20, 20, 12, 17);
    _el_21 = createAndAppendDbg(this, doc, 'dd', _el_2, 21, 13, 12);
    import5.Text _text_22 = new import5.Text('\n                ');
    _el_21.append(_text_22);
    dbgElm(this, _text_22, 22, 13, 16);
    _el_23 = createAndAppendDbg(this, doc, 'input', _el_21, 23, 14, 16);
    createAttr(_el_23, 'required', '');
    createAttr(_el_23, 'type', 'password');
    _const_OpaqueToken__NgValidators___23_4 = [import20.Validators.required];
    _DefaultValueAccessor_23_5 = new import15.DefaultValueAccessor(_el_23);
    _const_OpaqueToken__NgValueAccessor___23_6 = [_DefaultValueAccessor_23_5];
    _NgModel_23_7 = new import19.NgModelNgCd(new import16.NgModel(_const_OpaqueToken__NgValidators___23_4, _const_OpaqueToken__NgValueAccessor___23_6));
    _RequiredValidator_23_8 = new import17.RequiredValidator();
    import5.Text _text_24 = new import5.Text('\n            ');
    _el_21.append(_text_24);
    dbgElm(this, _text_24, 24, 14, 71);
    import5.Text _text_25 = new import5.Text('\n        ');
    _el_2.append(_text_25);
    dbgElm(this, _text_25, 25, 15, 17);
    import5.Text _text_26 = new import5.Text('\n        ');
    _el_0.append(_text_26);
    dbgElm(this, _text_26, 26, 16, 13);
    _el_27 = createAndAppendDbg(this, doc, 'button', _el_0, 27, 17, 8);
    createAttr(_el_27, 'type', 'submit');
    import5.Text _text_28 = new import5.Text('Login');
    _el_27.append(_text_28);
    dbgElm(this, _text_28, 28, 17, 54);
    import5.Text _text_29 = new import5.Text('\n    ');
    _el_0.append(_text_29);
    dbgElm(this, _text_29, 29, 17, 68);
    import11.appViewUtils.eventManager.addEventListener(_el_0, 'submit', eventHandler1(_NgForm_0_4.onSubmit));
    _el_12.addEventListener('input', eventHandler1(_handle_input_12_1));
    _el_12.addEventListener('blur', eventHandler0(_DefaultValueAccessor_12_5.touchHandler));
    final subscription_0 = _NgModel_12_7.instance.update.listen(eventHandler1(_handle_ngModelChange_12_0));
    _el_23.addEventListener('input', eventHandler1(_handle_input_23_1));
    _el_23.addEventListener('blur', eventHandler0(_DefaultValueAccessor_23_5.touchHandler));
    final subscription_1 = _NgModel_23_7.instance.update.listen(eventHandler1(_handle_ngModelChange_23_0));
    _el_27.addEventListener('click', eventHandler1(ctx.login));
    init([_el_0], [subscription_0, subscription_1], [_el_0, _text_1, _el_2, _text_3, _el_4, _text_5, _el_6, _text_7, _text_8, _text_9, _el_10, _text_11, _el_12, _text_13, _text_14, _el_15, _text_16, _el_17, _text_18, _text_19, _text_20, _el_21, _text_22, _el_23, _text_24, _text_25, _text_26, _el_27, _text_28, _text_29]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, const OpaqueToken('NgValidators')) && (12 == nodeIndex))) {
      return _const_OpaqueToken__NgValidators___12_4;
    }
    if ((identical(token, import15.DefaultValueAccessor) && (12 == nodeIndex))) {
      return _DefaultValueAccessor_12_5;
    }
    if ((identical(token, const OpaqueToken('NgValueAccessor')) && (12 == nodeIndex))) {
      return _const_OpaqueToken__NgValueAccessor___12_6;
    }
    if (((identical(token, import16.NgModel) || identical(token, import18.NgControl)) && (12 == nodeIndex))) {
      return _NgModel_12_7.instance;
    }
    if ((identical(token, import17.RequiredValidator) && (12 == nodeIndex))) {
      return _RequiredValidator_12_8;
    }
    if ((identical(token, const OpaqueToken('NgValidators')) && (23 == nodeIndex))) {
      return _const_OpaqueToken__NgValidators___23_4;
    }
    if ((identical(token, import15.DefaultValueAccessor) && (23 == nodeIndex))) {
      return _DefaultValueAccessor_23_5;
    }
    if ((identical(token, const OpaqueToken('NgValueAccessor')) && (23 == nodeIndex))) {
      return _const_OpaqueToken__NgValueAccessor___23_6;
    }
    if (((identical(token, import16.NgModel) || identical(token, import18.NgControl)) && (23 == nodeIndex))) {
      return _NgModel_23_7.instance;
    }
    if ((identical(token, import17.RequiredValidator) && (23 == nodeIndex))) {
      return _RequiredValidator_23_8;
    }
    if (((identical(token, import13.NgForm) || identical(token, import14.ControlContainer)) && ((0 <= nodeIndex) && (nodeIndex <= 29)))) {
      return _NgForm_0_4;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import4.Login _ctx = ctx;
    Map<String, SimpleChange> changes;
    bool firstCheck = (this.cdState == 0);
    changes = null;
    dbg(12, 8, 23);
    final currVal_0 = _ctx.username;
    if (import11.checkBinding(_expr_0, currVal_0)) {
      _NgModel_12_7.instance.model = currVal_0;
      changes ??= <String, SimpleChange>{};
      changes['model'] = new SimpleChange(_expr_0, currVal_0);
      _expr_0 = currVal_0;
    }
    if (!identical(changes, null)) {
      _NgModel_12_7.instance.ngOnChanges(changes);
    }
    if ((firstCheck && !import11.AppViewUtils.throwOnChanges)) {
      _NgModel_12_7.instance.ngOnInit();
    }
    changes = null;
    dbg(23, 14, 23);
    final currVal_1 = _ctx.password;
    if (import11.checkBinding(_expr_1, currVal_1)) {
      _NgModel_23_7.instance.model = currVal_1;
      changes ??= <String, SimpleChange>{};
      changes['model'] = new SimpleChange(_expr_1, currVal_1);
      _expr_1 = currVal_1;
    }
    if (!identical(changes, null)) {
      _NgModel_23_7.instance.ngOnChanges(changes);
    }
    if ((firstCheck && !import11.AppViewUtils.throwOnChanges)) {
      _NgModel_23_7.instance.ngOnInit();
    }
  }

  void _handle_ngModelChange_12_0($event) {
    dbg(12, 8, 23);
    ctx.username = $event;
  }

  void _handle_input_12_1($event) {
    dbg(12, 8, 16);
    _DefaultValueAccessor_12_5.onChange($event.target.value);
  }

  void _handle_ngModelChange_23_0($event) {
    dbg(23, 14, 23);
    ctx.password = $event;
  }

  void _handle_input_23_1($event) {
    dbg(23, 14, 16);
    _DefaultValueAccessor_23_5.onChange($event.target.value);
  }
}

AppView<import4.Login> viewFactory_Login1(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewLogin1(parentView, parentIndex);
}

List<StaticNodeDebugInfo> nodeDebugInfos_Login2 = [null, null];

class _ViewLogin2 extends DebugAppView<import4.Login> {
  import5.ButtonElement _el_0;
  _ViewLogin2(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.EMBEDDED, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_Login2) {
    componentType = ViewLogin0._renderType;
  }
  @override
  ComponentRef build() {
    var doc = import5.document;
    _el_0 = doc.createElement('button');
    dbgElm(this, _el_0, 0, 20, 4);
    createAttr(_el_0, 'type', 'submit');
    import5.Text _text_1 = new import5.Text('Logout');
    _el_0.append(_text_1);
    dbgElm(this, _text_1, 1, 20, 72);
    _el_0.addEventListener('click', eventHandler1(ctx.logout));
    init([_el_0], const [], [_el_0, _text_1]);
    return null;
  }
}

AppView<import4.Login> viewFactory_Login2(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewLogin2(parentView, parentIndex);
}

const List<dynamic> styles$LoginHost = const [];
List<StaticNodeDebugInfo> nodeDebugInfos_LoginHost0 = [
  new StaticNodeDebugInfo([import4.Login], import4.Login, <String, dynamic>{})
];

class _ViewLoginHost0 extends DebugAppView<dynamic> {
  ViewLogin0 _compView_0;
  import4.Login _Login_0_4;
  static RenderComponentType _renderType;
  _ViewLoginHost0(AppView<dynamic> parentView, num parentIndex) : super(import9.ViewType.HOST, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways, nodeDebugInfos_LoginHost0) {
    _renderType ??= import11.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$LoginHost);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef build() {
    _compView_0 = new ViewLogin0(this, 0);
    rootEl = _compView_0.rootEl;
    dbgIdx(rootEl, 0);
    _Login_0_4 = new import4.Login();
    _compView_0.create(_Login_0_4, projectableNodes);
    init([rootEl], const [], [rootEl]);
    return new ComponentRef(0, this, rootEl, _Login_0_4);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, import4.Login) && (0 == nodeIndex))) {
      return _Login_0_4;
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

AppView viewFactory_LoginHost0(AppView<dynamic> parentView, num parentIndex) {
  return new _ViewLoginHost0(parentView, parentIndex);
}

const ComponentFactory _LoginNgFactory = const ComponentFactory('login', viewFactory_LoginHost0, import4.Login, _LoginMetadata);
final ComponentFactory LoginNgFactory = _LoginNgFactory;
const _LoginMetadata = const [];
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;
  _ref0.initReflector();
  _ref1.initReflector();
  _ngRef.registerComponent(
    Login,
    LoginNgFactory,
  );
  _ngRef.registerFactory(
    Login,
    () => new Login(),
  );
}

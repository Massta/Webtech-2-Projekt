import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:example08/model/user.dart';

@Component(
    selector: 'register',
    templateUrl: 'register_component.html',
    directives: formDirectives)
class Register {
  User model;
  String registerMessage;

  Register() {
    model = new User();
    registerMessage = "";
  }

  void register(dynamic e) {
    e.preventDefault();
    var requestHeaders = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    HttpRequest
        .request("../rest/jwt/user",
        method: "POST",
        sendData: model.toJSON(),
        requestHeaders: requestHeaders).then((response) {
          registerMessage = "Erfolgreich registriert! Jetzt einloggen.";
          model.userName = "";
          model.password = "";
        }).catchError((n) => print(n));
  }
}
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
    selector: 'login',
    templateUrl: '../../basic/login/login_component.html',
    directives: const [CORE_DIRECTIVES, formDirectives])
class Login {
  String username;
  String password;
  bool loggedIn;

  bool isLoggedIn() {
    return loggedIn;
  }

  void login(dynamic e) {
    e.preventDefault();
    HttpRequest.postFormData("../login.jsp",
        {"username": username, "password": password}).then((response) {
      loggedIn = true;
    }).catchError((n) => print(n));
  }

  void logout(dynamic e) {
    e.preventDefault();
    HttpRequest.request("../logout", method: "GET").then((response) {
      loggedIn = false;
    }).catchError((n) => print(n));
  }
}

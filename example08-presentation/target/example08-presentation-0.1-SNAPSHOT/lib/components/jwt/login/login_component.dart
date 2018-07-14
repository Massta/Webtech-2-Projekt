import 'dart:async';
import 'dart:convert';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
    selector: 'login',
    templateUrl: '../../basic/login/login_component.html',
    directives: const [CORE_DIRECTIVES, formDirectives])
class Login {
  final _tokenOutput = new StreamController<String>();

  @Output()
  Stream<String> get tokenOutput => _tokenOutput.stream;

  String password;
  String username;

  bool loggedIn;

  bool isLoggedIn() {
    return loggedIn;
  }

  void login(dynamic e) {
    e.preventDefault();
    HttpRequest
        .request("../rest/jwt/authenticate",
            method: "POST",
            requestHeaders: {'Content-Type': 'application/json'},
            sendData: JSON.encode({"username": username, "password": password}))
        .then((response) {
      loggedIn = true;
      _tokenOutput.add(response.responseText);
    }).catchError((n) => print(n));
  }

  void logout(dynamic e) {
    e.preventDefault();
    loggedIn = false;
    _tokenOutput.add(null);
  }
}

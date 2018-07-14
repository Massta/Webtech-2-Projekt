import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
    selector: 'login',
    templateUrl: 'login_component.html',
    directives: const [CORE_DIRECTIVES, formDirectives])
class Login {
  final _usernameOutput = new StreamController<String>();

  @Output()
  Stream<String> get usernameOutput => _usernameOutput.stream;

  final _passwordOutput = new StreamController<String>();

  @Output()
  Stream<String> get passwordOutput => _passwordOutput.stream;

  String password;
  String username;

  bool loggedIn;

  bool isLoggedIn() {
    return loggedIn;
  }

  void login(dynamic e) {
    e.preventDefault();
    loggedIn = true;
    _usernameOutput.add(username);
    _passwordOutput.add(password);
  }

  void logout(dynamic e) {
    e.preventDefault();
    loggedIn = false;
    _usernameOutput.add(null);
    _passwordOutput.add(null);
  }
}

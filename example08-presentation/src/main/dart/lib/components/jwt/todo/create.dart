import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:example08/model/todo.dart';

@Component(
    selector: 'create-todo',
    templateUrl: 'create.html',
    directives: formDirectives)
class TodoCreate {
  Todo model;

  @Input()
  String token;

  TodoCreate() {
    model = new Todo();
  }

  void createTodo(dynamic e) {
    e.preventDefault();
    var requestHeaders = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    if (token != null) {
      requestHeaders['Authorization'] = 'Bearer ' + token;
    }

    HttpRequest
        .request("../rest/jwt/todo",
        method: "POST",
        sendData: model.toJSON(),
        requestHeaders: requestHeaders)
        .catchError((n) => print(n));
  }
}
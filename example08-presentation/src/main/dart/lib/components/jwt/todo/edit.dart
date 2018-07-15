import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:example08/model/todo.dart';

@Component(
    selector: 'edit-todo',
    templateUrl: 'edit.html',
    directives: formDirectives)
class TodoEdit {
  Todo model;

  @Input()
  String token;
  @Input()
  String title;
  @Input()
  String description;
  @Input()
  String userName;
  @Input()
  int id;

  TodoCreate() {
    model = new Todo();
    model.title = title;
    model.description = description;
    model.userName = userName;
    model.id = id;
  }

  void editTodo(dynamic e) {
    e.preventDefault();
    var requestHeaders = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    if (token != null) {
      requestHeaders['Authorization'] = 'Bearer ' + token;
    }

    HttpRequest
        .request("../rest/jwt/todo/update",
        method: "POST",
        sendData: model.toJSON(),
        requestHeaders: requestHeaders)
        .catchError((n) => print(n));
  }
}
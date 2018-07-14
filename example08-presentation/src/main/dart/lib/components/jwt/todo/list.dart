import 'dart:convert';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:example08/model/todo.dart';

@Component(
    selector: 'list-todos',
    templateUrl: 'list.html',
    directives: CORE_DIRECTIVES)
class TodoList {
  List<Todo> loaded;

  @Input()
  String token;

  void loadTodos(dynamic e) {
    e.preventDefault();
    fetchTodos();
  }

  bool hasBeenLoaded() {
    return loaded != null;
  }

  void fetchTodos() {
    var requestHeaders = {
      'Accept': 'application/json',
    };

    if (token != null) {
      requestHeaders['Authorization'] = 'Bearer ' + token;
    }

    HttpRequest
        .request("../rest/jwt/todo/index",
        method: "GET", requestHeaders: requestHeaders)
        .then((response) {
      var json = JSON.decode(response.responseText);
      loaded = new List<Todo>();
      for(int i = 0; i < json.length; i++){
        var curJson = json[i];
        var todo = new Todo();
        todo.title = curJson["title"];
        todo.description = curJson["description"];
        todo.userId = curJson["userId"];
        loaded.add(todo);
      }
    }).catchError((n) => print(n));
  }
}
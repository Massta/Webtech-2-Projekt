import 'dart:convert';
import 'dart:html';

import 'package:angular/angular.dart';
//import 'package:example08/components/jwt/todo/edit.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:example08/model/todo.dart';

@Component(
    selector: 'list-todos',
    templateUrl: 'list.html',
    directives: const[CORE_DIRECTIVES, formDirectives])
class TodoList {
  List<Todo> loaded;

  @Input()
  String token;
  Map<int, bool> shouldShowEdit;

  TodoList(){
    loaded = new List();
    shouldShowEdit = new Map<int, bool>();
  }

  void loadTodos(dynamic e) {
    e.preventDefault();
    fetchTodos();
  }

  bool hasBeenLoaded() {
    return loaded != null;
  }

  void edit(dynamic e, int index){
    e.preventDefault();
    var requestHeaders = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    if (token != null) {
      requestHeaders['Authorization'] = 'Bearer ' + token;
    }

    print("todo:");
    for(int i = 0; i < loaded.length; i++){
      print(loaded[i].id);
      print(loaded[i].userName);
      print(loaded[i].title);
      print(loaded[i].description);
    }

    HttpRequest
        .request("../rest/jwt/todo/update",
        method: "POST",
        sendData: loaded[index].toJSON(),
        requestHeaders: requestHeaders)
        .catchError((n) => print(n));
  }

  void setFinished(dynamic e, int id){
    e.preventDefault();
    var requestHeaders = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    if (token != null) {
      requestHeaders['Authorization'] = 'Bearer ' + token;
    }

    print("Tryint to delete todo "+id.toString());

    HttpRequest
        .request("../rest/jwt/todo/setFinished",
        method: "POST",
        sendData: id,
        requestHeaders: requestHeaders)
        .then((response){
          print(response.status);
          fetchTodos();
        })
        .catchError((n) => print(n));
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
          shouldShowEdit = new Map<int, bool>();
          var json = JSON.decode(response.responseText);
          loaded = new List<Todo>();
          for(int i = 0; i < json.length; i++){
            var curJson = json[i];
            print(curJson);
            var todo = new Todo();
            todo.id = curJson["id"];
            todo.title = curJson["title"];
            todo.description = curJson["description"];
            todo.userName = curJson["userName"];
            loaded.add(todo);
            shouldShowEdit[todo.id] = false;
          }
    }).catchError((n) => print(n));
  }
}
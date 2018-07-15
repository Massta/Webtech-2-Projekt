import 'dart:convert';

class Todo {
  int id;
  String title;
  String description;
  String userName;

  String toJSON() {
    return JSON.encode({'title': title, 'description': description, 'userName':userName,'id':id});
  }
}

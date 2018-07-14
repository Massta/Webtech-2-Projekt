import 'dart:convert';

class Todo {
  int id;
  String title;
  String description;
  int userId;

  String toJSON() {
    return JSON.encode({'title': title, 'description': description});
  }
}

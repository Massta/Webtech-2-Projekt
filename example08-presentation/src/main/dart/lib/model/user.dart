import 'dart:convert';

class User {
  int id;
  String userName;
  String password;
  bool isAdmin;

  String toJSON() {
    return JSON.encode({'userName': userName, 'password': password,'isAdmin':isAdmin,'id':id});
  }
}

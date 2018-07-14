import 'dart:convert';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:example08/model/news.dart';

@Component(
    selector: 'create-news',
    templateUrl: 'create_component.html',
    directives: formDirectives)
class CreateNews {
  News model;

  @Input()
  String username;

  @Input()
  String password;

  CreateNews() {
    model = new News();
  }

  void postNews(dynamic e) {
    e.preventDefault();
    var requestHeaders = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    if (username != null && password != null) {
      requestHeaders['Authorization'] =
          'Basic ' + BASE64.encode(UTF8.encode(username + ':' + password));
    }

    HttpRequest
        .request("../rest/basic/news",
            method: "POST",
            sendData: model.toJSON(),
            requestHeaders: requestHeaders)
        .catchError((n) => print(n));
  }
}

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
  String token;

  CreateNews() {
    model = new News();
  }

  void postNews(dynamic e) {
    e.preventDefault();
    var requestHeaders = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    if (token != null) {
      requestHeaders['Authorization'] = 'Bearer ' + token;
    }

    HttpRequest
        .request("../rest/jwt/news",
            method: "POST",
            sendData: model.toJSON(),
            requestHeaders: requestHeaders)
        .catchError((n) => print(n));
  }
}
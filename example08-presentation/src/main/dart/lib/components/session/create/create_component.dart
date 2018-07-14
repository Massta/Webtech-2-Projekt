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

  CreateNews() {
    model = new News();
  }

  void postNews(dynamic e) {
    e.preventDefault();
    var requestHeaders = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };
    HttpRequest
        .request("../rest/session/news",
            method: "POST",
            sendData: model.toJSON(),
            requestHeaders: requestHeaders)
        .catchError((n) => print(n));
  }
}

import 'dart:convert';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:example08/model/news.dart';

@Component(
    selector: 'show-newest',
    templateUrl: 'newest_component.html',
    directives: CORE_DIRECTIVES)
class ShowNewest {
  News loaded;

  @Input()
  String username;

  @Input()
  String password;

  void loadNewest(dynamic e) {
    e.preventDefault();
    fetchNewest();
  }

  bool hasBeenLoaded() {
    return loaded != null;
  }

  void fetchNewest() {
    var requestHeaders = {
      'Accept': 'application/json',
    };

    if (username != null && password != null) {
      requestHeaders['Authorization'] =
          'Basic ' + BASE64.encode(UTF8.encode(username + ':' + password));
    }

    HttpRequest
        .request("../rest/basic/news/newest",
            method: "GET", requestHeaders: requestHeaders)
        .then((response) {
      var json = JSON.decode(response.responseText);
      var news = new News();
      news.content = json["content"];
      news.headline = json["headline"];
      news.id = json["id"];
      news.publishedOn =
          new DateTime.fromMillisecondsSinceEpoch(json["publishedOn"]);
      loaded = news;
    }).catchError((n) => print(n));
  }
}

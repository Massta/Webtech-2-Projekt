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

  void loadNewest(dynamic e) {
    e.preventDefault();
    fetchNewest();
  }

  bool hasBeenLoaded() {
    return loaded != null;
  }

  void fetchNewest() {
    HttpRequest.request("../rest/session/news/newest",
        method: "GET",
        requestHeaders: {'Accept': 'application/json'}).then((response) {
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

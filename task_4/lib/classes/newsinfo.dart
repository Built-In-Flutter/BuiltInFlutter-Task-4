import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NewsInfo {
  late String title;
  late String story;
  late String picture;

  NewsInfo(this.title, this.story, this.picture);

  factory NewsInfo.fromJSON(Map<String, dynamic> json) {
    if (json["urlToImage"] != null) {
      return NewsInfo(json["title"], json["description"], json["urlToImage"]);
    } else
      return NewsInfo(json["title"], json["description"],
          "https://thumbs.dreamstime.com/b/no-image-available-icon-flat-vector-no-image-available-icon-flat-vector-illustration-132482953.jpg");
  }
}

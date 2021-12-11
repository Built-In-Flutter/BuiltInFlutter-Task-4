import 'package:flutter/widgets.dart';
import 'package:task_3/classes/newsinfo.dart';

class NewsInfoModel {
  late NewsInfo _newsInfo;

  NewsInfoModel(NewsInfo newsInfo) : _newsInfo = newsInfo;

  String get title {
    return _newsInfo.title;
  }

  String get story {
    return _newsInfo.story;
  }

  String get picture {
    return _newsInfo.picture;
  }
}

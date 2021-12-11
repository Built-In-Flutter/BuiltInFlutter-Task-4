import 'package:flutter/widgets.dart';
import 'package:task_3/classes/newsinfo.dart';
import 'package:task_3/classes/newsinfomodel.dart';
import 'package:task_3/classes/webservice.dart';

class NewsInfoModelList {
  late List<NewsInfoModel> articles;

  Future<List<NewsInfoModel>> populatenews() async {
    List<NewsInfo> newsinfoart = await webservice().fetchnews();
    this.articles =
        newsinfoart.map((article) => NewsInfoModel(article)).toList();
    return articles;
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task_3/classes/newsinfo.dart';

class webservice {
  Future<List<NewsInfo>> fetchnews() async {
    String url =
        "https://newsapi.org/v2/everything?q=tesla&from=2021-11-11&sortBy=publishedAt&apiKey=40177b9208724376a0304fe09271b78f";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["articles"];
      return list.map((article) => NewsInfo.fromJSON(article)).toList();
    } else {
      throw Exception("No news found");
    }
  }
}

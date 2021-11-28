import 'package:flutter/material.dart';
import 'package:newsapp/api/news.dart';
import 'package:newsapp/model/article_model.dart';
import 'package:newsapp/screen/config/var/var.dart' as configimg;
import 'package:newsapp/screen/home/widget/custom_tile.dart';

import 'widget/category_list.dart';
import 'widget/custom_app_bar.dart';
import 'widget/home_body.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          HomeBody(),
          const SizedBox(
            height: 5,
          ),
          CategoryList(),
          ListOne(),
        ],
      )),
    );
  }
}

class ListOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder<List<ArticleElement>>(
          future: News().getNews(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return CustomTile(
                      title: snapshot.data![index].title,
                      description: snapshot.data![index].description,
                      url: snapshot.data![index].url,
                      urlToImage: snapshot.data![index].urlToImage);
                },
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return const Center(
                  child: CircularProgressIndicator(
                strokeWidth: 3,
              ));
            }
          }),
    );
  }
}

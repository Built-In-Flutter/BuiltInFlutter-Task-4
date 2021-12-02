import 'package:edwin/Screens/home/widgets/title_bar.dart';
import 'package:edwin/api/news.dart';
import 'package:edwin/model/article_model.dart';
import 'package:flutter/material.dart';
import 'category_list.dart';
import 'custom_app_bar.dart';
import 'custom_tile.dart';

class RecentNews extends StatelessWidget {
  const RecentNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          TitleBar(),
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
      child: FutureBuilder<List<Article>>(
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
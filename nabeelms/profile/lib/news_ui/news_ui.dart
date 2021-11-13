import 'package:flutter/material.dart';
import 'package:untitled/api/news.dart';

import 'cards.dart';
import 'package:untitled/Model/article_model.dart';

class NewsUi extends StatefulWidget {
  const NewsUi({
    Key? key,
  }) : super(key: key);

  @override
  State<NewsUi> createState() => _NewsUiState();
}

class _NewsUiState extends State<NewsUi> {
  var url = Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=in&apiKey=cd79fff3bc1f495f82c4138d5c26fee4');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Image.asset(
                "assets/icons/drawerIcon.png",
                height: 200,
                width: 200,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    "WELCOME",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Emilia Bubu",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 70,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage("assets/user.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        drawer: const Drawer(),
        body: const NewsHome(),
      ),
    );
  }
}

class NewsHome extends StatelessWidget {
  const NewsHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(

         children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Trending",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: null,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Recent",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: null,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 350,
            child: FutureBuilder<Article>(
                future: News().getNews(),
                builder: (
                  context,
                  snapshot,
                ) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.articles.length,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          var data = snapshot.data!.articles[index];

                          return NewsHorizontalCards(
                            title: data.title.toString(),
                            urlToImage: data.urlToImage.toString(),
                            publishedAt: data.publishedAt.toString(),
                            url: data.url.toString(),
                          );
                        });
                  } else {
                    return Container();
                  }
                }),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20),
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "BASED ON YOUR READING HISTORY",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ),
          FutureBuilder<Article>(
              future: News().getNews(),

              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: -1+snapshot.data!.articles.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        var data = snapshot.data!.articles[index];
                        return NewsVerticalCards(

                            url: data.url.toString(),
                            description: data.description.toString(),
                            publishedAt: data.publishedAt.toString(),
                            title: data.title.toString(),
                            urlToImage: data.urlToImage.toString());
                      });
                } else {
                  return Container();
                }
                ;
              }),
        ]),
      ),
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.0,
      width: 5.0,
      decoration: const BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}

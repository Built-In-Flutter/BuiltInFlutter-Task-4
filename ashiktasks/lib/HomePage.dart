import 'package:ashiktasks/Components/CustomAppBar.dart';
import 'package:ashiktasks/Components/NewsList.dart';
import 'package:ashiktasks/Components/Recentnews.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String category = "General";
  
  void updateCategory(String newCategory) {
    setState(() {
      category = newCategory;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            CustomAppBar(),
            //Headline(),
            SizedBox(height: 20),
            NewsList(onCategoryChanged: (String category) {
              updateCategory(category);
            }),
            Recentnews(category:category),
          ],
        ),
      ),
    );
  }
}

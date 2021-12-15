import 'package:flutter/material.dart';
import 'widget/categorylist.dart';
import 'widget/custom_tile.dart';
import 'widget/customappbar.dart';
import 'widget/recentnews.dart';
import 'widget/titlebar.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String category="General";
  void updateIdCategory( newCategory){
    setState(() {
    
    category=newCategory;
    });
  }
    
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:10),
            CustomAppbar(),
              SizedBox(height:10),
            Category_List(onCategoryChanged: (String category){
              updateIdCategory(category);
            }
            ),
            RecentNews(category:category),
          ],
        ), 
        ),
      );
  }
}


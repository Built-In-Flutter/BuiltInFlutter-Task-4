import 'package:flutter/material.dart';

import 'widgets/categorylist.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/recentnews.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String category = "General";
  void updateCatogry(newCategory) {
    setState(() {
      category = newCategory;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: CustomAppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // customAppBar(),
                // titlebar(),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: CategoryList(
                    onCategoryChanges: (String category) {
                      updateCatogry(category);
                    },
                    currentCategory: category,
                  ),
                ),
                //categoryList(),
                RecentNews(
                  screenWidth: screenwidth,
                  category: category,
                ),
              ],
            ),
          ),
        ));
  }
}

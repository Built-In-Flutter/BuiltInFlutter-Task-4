import 'package:flutter/material.dart';
import 'package:newsapp/screens/home/widgets/customappbar.dart';
import 'widgets/categorylist.dart';
import 'widgets/homebody.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String category = "General";
  void updateCategory(newCategory) {
    setState(() {
      category = newCategory;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyCustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: CategoryList(
                  onCategoryChanged: (String category) {
                    updateCategory(category);
                  },
                  currentCategory: category,
                ),
              ),
              RecentNews(
                screenWidth: screenWidth,
                category: category,
              ),
            ],
          ),
        ),
      ), backgroundColor: Colors.black,
    );
  }
}

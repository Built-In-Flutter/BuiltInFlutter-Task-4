import 'package:flutter/material.dart';
import 'package:news/screen/home/widgets/custom_appbar.dart';
import 'widgets/category_list.dart';
import 'widgets/recent_news.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? category = "General";
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
              // CustomAppBar(),
              // TitleBar(screenWidth: screenWidth),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: CategoryList(
                  onCategoryChanged: (String category) {
                    updateCategory(category);
                  },
                ),
              ),
              RecentNews(
                screenWidth: screenWidth,
                category: category ?? "General",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//   leading: Padding(
//     padding: const EdgeInsets.only(left: 12),
//     child: IconButton(
//       icon: const Icon(Icons.search),
//       onPressed: () {}, // omitting onPressed makes the button disabled
//     ),
//   ),
//   title: null, // 2
//   centerTitle: true,
//   actions: <Widget>[
//     GestureDetector(
//       onTap: () {
//         Navigator.of(context).pushNamed(Profile.routeName);
//       },
//       child: const CircleAvatar(
//         radius: 21,
//         backgroundImage: NetworkImage(profileImage),
//       ),
//     ), // avatar added here
//   ], // 3
// ),

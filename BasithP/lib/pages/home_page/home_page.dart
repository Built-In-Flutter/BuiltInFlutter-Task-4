import 'package:flutter/material.dart';

import '/config/routes.dart' as route;
import '/utils/vars.dart';
import '/widgets/circle_avatar_with_shadow.dart';
import 'widgets/all_news_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mdQry = MediaQuery.of(context);
    final appBar = AppBar(
      leading: const Icon(Icons.search_rounded),
      elevation: 0,
      title: Text(
        'THE BiF NEWS',
        style: appBarTextStyle,
      ),
      actions: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, route.profilePage),
          child: const Hero(
            tag: 'profilePic',
            child: CircleAvatarWithShadow(
              image: AssetImage('assets/images/1.png'),
              radius: 15,
            ),
          ),
        ),
        const SizedBox(width: 10)
      ],
    );

    final List categories = ['All', 'Business', 'Entertainment', 'Science', 'Sports', 'Technology'];

    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 66,
                child: ListView.builder(
                  padding: const EdgeInsets.all(15),
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: categories.length,
                  shrinkWrap: true,
                  itemBuilder: (ctx, index){
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.4)),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(categories[index]),
                  );
                },),
              ),
              AllNewsSection(mdQry: mdQry),
            ],
          ),
        ),
      ),
    );
  }
}

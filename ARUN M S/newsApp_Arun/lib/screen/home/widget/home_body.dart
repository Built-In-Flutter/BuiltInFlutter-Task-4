import 'package:flutter/material.dart';
import 'package:newsapp/screen/config/var/var.dart' as configimg;
import 'package:newsapp/screen/details/detail_news.dart';
import 'package:newsapp/screen/home/widget/main_bar.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Breaking News",
            style: TextStyle(
                fontSize: 35, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          //  GestureDetector(
          //    onTap: () {
          //      Navigator.of(context).pushNamed(DetailNews.routName);
          //    },
          //    child: MainBar(),
          //  ),
        ],
      ),
    );
  }
}

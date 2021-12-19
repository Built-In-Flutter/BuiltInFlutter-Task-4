import 'package:flutter/material.dart';
import 'package:newzera/screen/details/detail_news.dart';
import '..//config/var/var.dart' as configvar;
import 'main_bar.dart';

class PicBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Breaking News',
            style: Theme.of(context).primaryTextTheme.headline3,
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(DetailNews.routeName);
            },
            child: Mainbar(),
          ),
        ],
      ),
    );
  }
}

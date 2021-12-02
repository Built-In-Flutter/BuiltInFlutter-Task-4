import 'package:flutter/material.dart';
import 'package:edwin/Screens/config/var/var.dart' as configvar;
import 'package:edwin/Screens/details/detail_news.dart';
import 'main_bar.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key, 
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final screenwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Breaking News',
              style: Theme.of(context).primaryTextTheme.headline3),
              const SizedBox(height: 10),
          //GestureDetector(
            //onTap: (){Navigator.of(context).pushNamed(DetailNews.routename);},
            //child: const MainBar()),
        ],
      ),
    );
  }
}



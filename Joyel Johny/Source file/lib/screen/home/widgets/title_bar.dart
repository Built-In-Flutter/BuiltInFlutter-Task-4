import 'package:flutter/material.dart';
import 'package:news_app/screen/config/var/var.dart' as configvar;

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Breaking News',
            style: Theme.of(context).primaryTextTheme.headline3,
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(configvar.newspaperImage),
          ),
          const SizedBox(height: 10),
          Container(
            width: screenWidth * 0.9,
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'The manufacturing of Racing Bikes rose to 80% in US it will create a huge impact on economy',
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          const SizedBox(height: 13),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(configvar.profileImage),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'flutter shyam',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              Text(
                '17 Oct, 2021',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'portfolio.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(Profile.routeName2);
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
              radius: 23,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            '12 oct, 2021 ',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Icon(
            Icons.search,
            size: 30,
          )
        ],
      ),
    ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

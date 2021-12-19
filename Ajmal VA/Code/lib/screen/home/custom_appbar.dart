import 'package:flutter/material.dart';
import '../aboutus.dart';
import '../config/var/var.dart' as configvar;

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(AboutUS.routeName);
                },
                child: const CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/aju.jpg'),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '23 Sept, 2021',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          Icon(
            Icons.search,
            size: 30,
          ),
        ],
      ),
    );
  }
}

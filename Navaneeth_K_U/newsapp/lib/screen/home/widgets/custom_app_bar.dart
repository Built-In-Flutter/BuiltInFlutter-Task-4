import 'package:flutter/material.dart';
import 'package:portfolio/portfolio.dart';
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
              IconButton(
                icon: Image.asset('assets/profile.jpg'),
                iconSize: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
                },
              ),
              const SizedBox(width: 10),
              Text(
                '07 Oct, 2021',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          Icon(Icons.search, size: 30),
        ],
      ),
    );
  }
}

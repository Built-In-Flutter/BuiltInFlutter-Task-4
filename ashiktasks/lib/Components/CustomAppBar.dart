import 'package:ashiktasks/Portfolio.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(Portfolio.routeName);
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Profilepic.jpg'),
              ),
            ),
            SizedBox(width: 15),
            Text(
              "19 Oct 2021",
              style: TextStyle(
                color: Colors.black26,
              ),
            ),
          ]),
          Icon(Icons.search),
        ],
      ),
    );
  }
}

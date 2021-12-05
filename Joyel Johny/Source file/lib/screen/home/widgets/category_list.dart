import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("All"),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Information"),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Business"),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Sports"),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Media"),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Headlines"),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("International"),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Electronics"),
          ),
        ],
      ),
    );
  }
}

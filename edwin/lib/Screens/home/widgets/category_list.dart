import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      height: 35,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('All'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Sports'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Global'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Business'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Technology'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Fasion'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Festivel'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Politics'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Education'),
        ),
      ],),
    );
  }
}

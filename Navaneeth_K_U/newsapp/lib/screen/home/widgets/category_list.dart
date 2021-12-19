import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Expanded(
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
          ],
        ),
      ),
    );
  }
}

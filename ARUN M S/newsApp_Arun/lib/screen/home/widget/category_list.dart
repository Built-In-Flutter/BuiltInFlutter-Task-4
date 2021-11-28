import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
              top: 5,
            ),
            child: Text('All'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
              top: 5,
            ),
            child: Text('Global'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
              top: 5,
            ),
            child: Text('Sports'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
              top: 5,
            ),
            child: Text('Local'),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 15, left: 15, top: 5, bottom: 5),
            child: Text('Events'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
              top: 5,
            ),
            child: Text('Nature'),
          ),
        ],
      ),
    );
  }
}

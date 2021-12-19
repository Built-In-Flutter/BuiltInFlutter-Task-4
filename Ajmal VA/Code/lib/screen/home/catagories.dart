import 'package:flutter/material.dart';

class Catagories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('All'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Sports'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Crypto'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Tech'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Music'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Art'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Politics'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Stocks'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Health'),
          ),
        ],
      ),
    );
  }
}

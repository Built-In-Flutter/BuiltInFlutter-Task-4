import 'package:flutter/material.dart';

typedef void IntCallback(String id);

class NewsList extends StatelessWidget {
  final IntCallback onCategoryChanged;

  const NewsList({Key key, this.onCategoryChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> categoryList = [
      "All",
      "Sports",
      "Movies",
      "Entertainment",
      "Business",
      "Health",
      "Science"
    ];

    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categoryList.map((type) {
          return Padding(
            padding: EdgeInsets.all(10.0),
            child: GestureDetector(
                onTap: () {
                  onCategoryChanged(type);
                },
                child: Text(type,
                    style: Theme.of(context).primaryTextTheme.headline6)),
          );
        }).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

typedef IntCallBack = void Function(String category);

class CategoryList extends StatefulWidget {
  final IntCallBack onCategoryChanged;
  final String currentCategory;
  const CategoryList({
    Key? key,
    required this.onCategoryChanged,
    required this.currentCategory
  }) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    final List<String> categoryList = [
      'Products',
      'Reviews',
      'Gaming',
      'Gear',
      'Entertainment',
      'Videos'
    ];
    return SizedBox(
      height: 50,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: categoryList.map((type) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: GestureDetector(
                onTap: () {
                  widget.onCategoryChanged(type);
                },
                child: Text(
                  type,
                  style: TextStyle(
                      color: (widget.currentCategory==type)?Colors.deepOrange : Colors.deepOrange, fontWeight: FontWeight.w500),
                ),
              ),
            );
          }).toList()),
    );
  }
}

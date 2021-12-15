import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

typedef IntCallBack = void Function(String category);

class CategoryList extends StatefulWidget {
  final IntCallBack onCategoryChanged;
  const CategoryList({
    Key? key,
    required this.onCategoryChanged,
  }) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    final List<String> categoryList = [
      'General',
      'Business',
      'Entertainment',
      'Health',
      'Sports',
      'Technology'
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
                  style: GoogleFonts.poppins(
                      color: Colors.black54, fontWeight: FontWeight.w500),
                ),
              ),
            );
          }).toList()),
    );
  }
}

          // Padding(
          //   padding: const EdgeInsets.only(left: 15.0),
          //   child: Text(
          //     'All',
          //     style: GoogleFonts.poppins(
          //         color: Colors.black45, fontWeight: FontWeight.w500),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 25.0),
          //   child: Text(
          //     'Information',
          //     style: GoogleFonts.poppins(
          //         color: Colors.black45, fontWeight: FontWeight.w500),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 25.0),
          //   child: Text(
          //     'Media',
          //     style: GoogleFonts.poppins(
          //         color: Colors.black45, fontWeight: FontWeight.w500),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 25.0),
          //   child: Text(
          //     'Magazine',
          //     style: GoogleFonts.poppins(
          //         color: Colors.black45, fontWeight: FontWeight.w500),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 25.0),
          //   child: Text(
          //     'Business',
          //     style: GoogleFonts.poppins(
          //         color: Colors.black45, fontWeight: FontWeight.w500),
          //   ),
          // ),
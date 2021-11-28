import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

typedef IntcallBack = void Function(String category);

class CategoryList extends StatefulWidget {
  final IntcallBack onCategoryChanges;
  final String currentCategory;
  const CategoryList(
      {Key? key,
      required this.currentCategory,
      required this.onCategoryChanges})
      : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    final List<String> categoryList = [
      'General',
      'Business',
      'Health',
      'Entertainment',
      'Astrology',
      'space',
      'science'
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
                  widget.onCategoryChanges(type);
                },
                child: Text(
                  type,
                  style: GoogleFonts.poppins(
                      color: (widget.currentCategory == type)
                          ? Colors.black87
                          : Colors.black,
                      fontWeight: FontWeight.w800),
                ),
              ),
            );
          }).toList()),
    );
  }
}

    // var scrollFont = Theme.of(context).primaryTextTheme.bodyText2!.merge(
    //       TextStyle(fontWeight: FontWeight.w700),
    //     );
    // return Container(
    //   height: 50,
    //   child: ListView(
    //     scrollDirection: Axis.horizontal,
    //     children: [
          // Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Text(
          //     'All',
          //     style: scrollFont,
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Text('Sports', style: scrollFont),
          // ),
          // Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Text('Entertainment', style: scrollFont),
          // ),
          // Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Text('Technology', style: scrollFont),
          // ),
          // Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Text('Automotive', style: scrollFont),
          // ),
          // Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Text('Astrology', style: scrollFont),
          // ),
          // Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Text('Space Research', style: scrollFont),
          // ),
          // Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Text('Education', style: scrollFont),
          // ),
          // Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Text('Bussiness', style: scrollFont),
          // ),
          // Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Text('Movies', style: scrollFont),
          // )
//         ],
//       ),
//     );
//   }
// }

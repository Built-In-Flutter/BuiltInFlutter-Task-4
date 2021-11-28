import 'dart:html';

import 'package:flutter/material.dart';
import 'package:newappui/details/article_view.dart';
import 'package:newappui/model/article_model.dart';

class customTile extends StatefulWidget {
  const customTile({
    Key? key,
    required this.screenwidth,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
  }) : super(key: key);

  final double screenwidth;
  //final Source source;

  final String title;
  final String description;
  final String url;
  final String urlToImage;

  @override
  State<customTile> createState() => _customTileState();
}

class _customTileState extends State<customTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ArticleView(url: widget.url)));
        },
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 30,
                  
                  // offset: Offset(0, 5),
                )
              ],
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.network(
                          widget.urlToImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(widget.title),
                        subtitle: Text(widget.description),
                      ),
                    ],
                  ),
                ))));
  }
  //   child: Row(
  //     children: [
  //       Container(
  //         width: 70,
  //         height: 60,
  //         child: ClipRRect(
  //           borderRadius: BorderRadius.circular(8),
  //           child: Image.asset(
  //             'assets/cover.jpg',
  //             fit: BoxFit.cover,
  //           ),
  //         ),
  //       ),
  //       const SizedBox(
  //         width: 10,
  //       ),
  //       Column(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Container(
  //             width: screenwidth * .7,
  //             child: Text(
  //               'This is Ford offroad truck Imported from germany ',
  //               style: Theme.of(context).primaryTextTheme.bodyText1!.merge(
  //                     const TextStyle(fontWeight: FontWeight.w700),
  //                   ),
  //             ),
  //           ),
  //           const SizedBox(
  //             height: 12,
  //           ),
  //           Container(
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 icontext(
  //                   iconData: Icons.calendar_today,
  //                   title: 'oct 12 , 2021',
  //                 ),
  //                 SizedBox(width: 20),
  //                 icontext(
  //                   iconData: Icons.lock_clock,
  //                   title: '10 min Read',
  //                 )
  //               ],
  //             ),
  //           ),
  //         ],
  //       )
  //     ],
  //   ),

// class icontext extends StatelessWidget {
//   final IconData iconData;
//   final String title;
//   icontext({required this.iconData, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Icon(
//           iconData,
//           size: 10,
//         ),
//         SizedBox(
//           width: 5,
//         ),
//         Text(title, style: Theme.of(context).textTheme.bodyText1),
//       ],
//     );
//   }
// }
}

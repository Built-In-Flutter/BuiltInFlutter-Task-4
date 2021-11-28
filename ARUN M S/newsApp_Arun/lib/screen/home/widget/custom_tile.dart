// ignore: file_names
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile(
      {Key? key,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage});

  //Source source;
  //final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  //DateTime publishedAt;
  //String content;

  @override
  Widget build(BuildContext context) {
    final double _imageHeight = MediaQuery.of(context).size.width * 9 / 16;

    return Container(
        padding: const EdgeInsets.only(right: 15, left: 15),
        //   child: SingleChildScrollView(
        child: Column(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                urlToImage,
                fit: BoxFit.fitHeight,
                height: _imageHeight,
              )),
          ListTile(
            title: Text(title),
            subtitle: Text(description),
          ),
        ])
        //),
        );
    //  Row(
    //   children: [
    //   Container(
    //     height: 60,
    //   width: 80,
    // child: ClipRRect(
    // borderRadius: BorderRadius.circular(15),
    //  child: Image.network(
    //                   configimg.mainImg,
    //                  fit: BoxFit.cover,
    //                ))),
    //        SizedBox(
    //         width: 10,
    //        ),
    //        Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Container(
    //               width: screenwidth * 0.5,
    //               child: Text(
    //                 'Equipped with a wide range of weapons',
    //                 style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
    //               ),
    //             ),
    //             SizedBox(
    //               height: 8,
    //             ),
    //             Row(
    //               children: [
    //                 Row(
    //                   children: [
    //                     Icon(
    //                       Icons.calendar_today,
    //                       size: 18,
    //                     ),
    //                     SizedBox(
    //                       width: 5,
    //                     ),
    //                    Text(
    //                    '29 Sep 2021',
    //                  style: TextStyle(color: Colors.black45),
    //              ),
    //          ],
    //      ),
    //    SizedBox(
    //    width: 60,
    //),
    //            Row(
    //              children: [
    //                Icon(
    //                  Icons.alarm,
    //                  size: 18,
    //                ),
    //                SizedBox(
    //                  width: 5,
    //                ),
    //                Text(
    //                  '10 min Read',
    //                  style: TextStyle(color: Colors.black45),
    //                ),
    //              ],
    //            )
    //          ],
    //          ),
    //          SizedBox(
    //            height: 5,
    //           ),
    //          ],
    //       ),
    //     ],
    //    ),
  }
}

import 'package:flutter/material.dart';
import '..//config/var/var.dart' as configvar;

class Customtile extends StatefulWidget {
  const Customtile({
    Key? key,
    required this.screenWidth,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
  }) : super(key: key);

  final double screenWidth;
  //final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;

  @override
  State<Customtile> createState() => _CustomtileState();
}

class _CustomtileState extends State<Customtile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(widget.urlToImage),
          ),
          ListTile(
            title: Text(widget.title),
            subtitle: Text(widget.description),
          ),
        ],
      ),

      // child: Row(
      //   children: [
      //     Container(
      //       height: 70,
      //       width: 90,
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(8),
      //         child: Image.network(
      //           configvar.webimg,
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ),
      //     const SizedBox(
      //       width: 10,
      //     ),
      //     Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           width: screenWidth * 0.6,
      //           child: Text(
      //             "This is a little way to create a flutter news app",
      //             style: Theme.of(context)
      //                 .primaryTextTheme
      //                 .bodyText1!
      //                 .merge(const TextStyle(
      //                   fontWeight: FontWeight.w700,
      //                 )),
      //           ),
      //         ),
      //         const SizedBox(
      //           height: 12,
      //         ),
      //         Container(
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               IconText(
      //                 iconData: Icons.calendar_today,
      //                 title: 'Jan 12, 2021',
      //               ),
      //               SizedBox(
      //                 width: 20,
      //               ),
      //               IconText(
      //                 iconData: Icons.lock_clock,
      //                 title: '10 min Read',
      //               ),
      //             ],
      //           ),
      //         )
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}

// class IconText extends StatelessWidget {
//   final IconData iconData;
//   final String title;

//   IconText({required this.iconData, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Icon(
//           iconData,
//           size: 15,
//         ),
//         const SizedBox(
//           width: 5,
//         ),
//         Text(
//           title,
//           style: Theme.of(context).textTheme.bodyText1,
//         ),
//       ],
//     );
//   }
// }

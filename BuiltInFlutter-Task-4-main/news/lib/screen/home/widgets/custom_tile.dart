import 'package:flutter/material.dart';
import 'package:news/screen/details/article_view.dart';

class CustomTile extends StatefulWidget {
  const CustomTile({
    Key? key,
    required this.screenWidth,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
  }) : super(key: key);

  final double screenWidth;
  // final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
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
            /* Row(
              children: [
                SizedBox(
                  height: 80,
                  width: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      newsPaperImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.5,
                      child: Text(
                        "This is a little way to create flutter",
                        style: Theme.of(context).primaryTextTheme.bodyText1!.merge(
                              const TextStyle(
                                fontWeight: FontWeight.w700,
                                wordSpacing: 2.5,
                              ),
                            ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        IconText(
                          title: 'Jan 10, 2021',
                          iconData: Icons.calendar_today,
                        ),
                        SizedBox(width: 20),
                        IconText(
                          title: '10 min Read',
                          iconData: Icons.lock_clock,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ), */
          ),
        ),
      ),
    );
  }
}

// class IconText extends StatelessWidget {
//   const IconText({Key? key, required this.iconData, required this.title})
//       : super(key: key);

//   final IconData iconData;
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Icon(
//           iconData,
//           size: 17,
//         ),
//         const SizedBox(
//           width: 6,
//         ),
//         Text(
//           title,
//           style: Theme.of(context).textTheme.bodyText1,
//         ),
//       ],
//     );
//   }
// }

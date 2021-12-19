import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.network(widget.urlToImage)),
          ListTile(
            title: Text(widget.title),
            subtitle: Text(widget.description),
          ),
        ],
      ),
/*       child: Row(
        children: [
          Container(
            height: 80,
            width: 100,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/covidzero.jpg',
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: screenWidth * 0.5,
                  child: Text(
                    'Karnataka news live: 13 districts in state record zero Covid deaths in 7 days',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText1!
                        .merge(TextStyle(fontWeight: FontWeight.w700)),
                  )),
              const SizedBox(width: 12),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(iconData: Icons.calendar_today_rounded, title: '07 Oct, 2021',),
                    const SizedBox(width: 20),
                    IconText(iconData: Icons.lock_clock, title: '10 Min Read',),
                  ],
                ),
              )

            ],
          )
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final IconData iconData;
  final String title;
  IconText({required this.iconData,required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, size: 17),
        const SizedBox(width: 6),
        Text(title,
            style: Theme.of(context).textTheme.bodyText1),

      ],
    ); */
    );
  }
}

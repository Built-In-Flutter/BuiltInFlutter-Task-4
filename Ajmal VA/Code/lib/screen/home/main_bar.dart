import 'package:flutter/material.dart';
import '..//config/var/var.dart' as configvar;

class Mainbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(configvar.webimg),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: screenWidth * 0.8,
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            'Should We Go for online or conventional way of finding news?',
            style: Theme.of(context).primaryTextTheme.headline5,
            maxLines: 3,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(configvar.profileimage),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Ajmal VA',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            Text(
              '23 Sept, 2021',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ],
    );
  }
}

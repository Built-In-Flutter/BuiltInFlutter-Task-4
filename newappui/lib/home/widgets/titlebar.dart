

import 'package:flutter/material.dart';


class titlebar extends StatelessWidget {
  const titlebar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Breaking News",
            style: Theme.of(context).primaryTextTheme.headline4,
          ),
          const SizedBox(
            height: 10,
          ),
          
        ],
      ),
    );
  }
}

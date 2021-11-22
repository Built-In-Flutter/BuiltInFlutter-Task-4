import 'package:flutter/material.dart';
import '../../config/var/var.dart';

class MainBar extends StatelessWidget {
  const MainBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.network(
            newsPaperImage,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'Est voluptate ex amet pariatur mollit fugiat consectetur anim.',
            style: Theme.of(context).primaryTextTheme.headline6,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(profileImage),
                  ),
                  const SizedBox(width: 10),
                  Text('Nahsor Lihda',
                      style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
              Text('23 Sep, 2021',
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ),
      ],
    );
  }
}

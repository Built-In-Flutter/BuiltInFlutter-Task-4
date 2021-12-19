import 'package:flutter/material.dart';
import 'package:portfolio/portfolio.dart';
class Mainbar extends StatelessWidget {
  const Mainbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.network('https://i.guim.co.uk/img/static/sys-images/Money/Pix/pictures/2010/4/16/1271419559750/Diamond-merchants-are-rep-001.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=f1b2b610a563a898ce23a2702d9f53de')
        ),
        const SizedBox(height: 10),
        Container(
            child: Text(
              '3D Nano-inks Push Industry Boundaries',
              style: Theme.of(context).primaryTextTheme.headline5,
            )),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Image.asset('assets/profile.jpg'),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profile()),
                    );
                  },
                ),
                const SizedBox(width: 10),
                Text(
                  'Navaneeth K U',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            Text(
              '07 Oct, 2021',
              style: Theme.of(context).textTheme.bodyText1,),
          ],
        ),
      ],
    );
  }
}

import 'package:newsapp/screens/profile.dart';
import 'package:flutter/material.dart';
import '../../config/var.dart' as configimg;
class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyCustomAppBar({Key? key}) : super(key: key);

  static double height = 66;

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      titleSpacing: 50,
      backgroundColor: Colors.black,
      foregroundColor: Colors.deepOrange,
      elevation: 0,
      centerTitle: true,
      title: Center(
        child: Row(
          children: [
            Text('News ',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontFamily: 'Italianno',
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                )),
            Text('Hour',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontFamily: 'Italianno',
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                )),
          ],
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(Home.routName1);
        },
        child: const CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(configimg.profilePic),
        ),
      ),
      actions: const [Icon(Icons.search, size: 30)],
    );

    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 13, right: 13),
      child: appBar,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/screen/config/var/var.dart';
import 'package:news/screen/profile/profile.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyCustomAppBar({Key? key}) : super(key: key);

  static double height = 66;

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      titleSpacing: 50,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black87,
      elevation: 0,
      centerTitle: true,
      title: Center(
        child: Row(
          children: [
            Text('Alpha ',
                style: TextStyle(
                  color: Colors.black87,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                )),
            Text('News',
                style: TextStyle(
                  color: Colors.black87,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 28,
                  // fontWeight: FontWeight.w500,
                )),
          ],
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(Profile.routeName);
        },
        child: const CircleAvatar(
          radius: 21,
          backgroundImage: NetworkImage(profileImage),
        ),
      ),
      actions: const [Icon(Icons.search, size: 30)],
    );

    // height == appBar.preferredSize.height;
    // print("\nHeight " + height.toString() + "\n");
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 13, right: 13),
      child: appBar,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

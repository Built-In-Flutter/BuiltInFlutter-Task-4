import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../profile/profile.dart';
import '../../config/var/var.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 25, right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(Profile.routeName);
              },
              child: const CircleAvatar(
                radius: 21,
                backgroundImage: NetworkImage(profileImage),
              ),
            ),
            Row(
              children: [
                Text('Alpha ',
                    style: TextStyle(
                      color: Colors.black45,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    )),
                Text('News',
                    style: TextStyle(
                      color: Colors.black45,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 25,
                      // fontWeight: FontWeight.w500,
                    )),
              ],
            ),
            const Icon(Icons.search, size: 30)
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

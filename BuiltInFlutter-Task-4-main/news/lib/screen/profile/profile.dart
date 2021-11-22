import 'package:flutter/material.dart';
import 'widgets/profile_details.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  static const routeName = 'Profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          color: Colors.black54,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: 600,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 22, right: 22, bottom: 22),
        child: const ProfileDetails(),
      ),
    );
  }
}

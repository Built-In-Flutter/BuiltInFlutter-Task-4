import 'package:edwin/Screens/profile/profile_info.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static const routename = 'Profile';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue[50],
          appBar: AppBar(
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20))),
              title: const Text('Profile'),
              titleTextStyle: const TextStyle(
                  fontSize: 30, fontFamily: 'Gluten', color: Colors.black),
              centerTitle: true,
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () { Navigator.of(context).pop();},
                color: Colors.black,
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                  color: Colors.black,
                )
              ]),
          body: info(),
        ));
  }
}
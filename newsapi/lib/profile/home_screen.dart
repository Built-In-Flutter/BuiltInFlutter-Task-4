import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'circle_avatar_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView(
          physics:BouncingScrollPhysics() ,
          scrollDirection: Axis.vertical,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatarWidget(
                    height: 130,
                    width: 200,
                    radius: 2500,
                    iconImage: "assets/l.png",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Ahamad Asim',
                    style: GoogleFonts.italiana(fontSize: 40,color: Colors.black87),
                  ),
                  Text(
                    'Developer',
                    style: GoogleFonts.italiana(fontSize: 20,color: Colors.black),
                  ),
                  Container(
                    width: 150,
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 15,left: 20),
                    child: Column(
                      children: [
                        Row(
                          children:  [
                            Text(
                              "Hi,I am a",
                              style: TextStyle(fontSize: 15,color: Colors.black),
                            ),
                            Text(
                              "Developer ",
                              style: TextStyle(
                                  fontSize: 17,color: Colors.black, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "based in Kozhikode, Kerala",
                              style: TextStyle(
                                  fontSize: 16,color: Colors.black
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 350,
                    child:  Divider(
                      thickness: 2,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      launch(
                          "mailto:ahamadasimash4@gmail.com?subject=&body=");
                    },
                    child:  ListTile(
                      title: Text("ahamadasimash4@gmail.com",style: TextStyle(color: Colors.black),),
                      leading: CircleAvatarWidget(
                        width: 40,
                        height: 30,
                        radius: 0,
                        iconImage: "assets/icons/gmail.png",
                      ),
                    ),

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      launch("https://github.com/Ahamad-Asim");
                    },
                    child:  ListTile(
                      title: Text("https://github.com/Ahamad-Asim",style: TextStyle(color: Colors.black),),
                      leading: CircleAvatarWidget(
                        width: 40,
                        height: 30,
                        radius: 0,
                        iconImage: "assets/icons/github.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text("7306631960",style: TextStyle(color: Colors.black),),
                    leading: CircleAvatarWidget(
                      width: 40,
                      height: 30,
                      radius: 0,
                      iconImage: "assets/icons/telephone.png",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


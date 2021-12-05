import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/screen/config/var/var.dart' as configvar;
import 'package:news_app/screen/home/home_page.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = 'ProfilePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Profile',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushNamed(HomePage.routename);
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
              padding: EdgeInsets.only(right: 20.0),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blueAccent.shade400,
                      Colors.blueAccent.shade700,
                      Colors.blue.shade900,
                      Colors.indigo.shade900
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
                ),
                height: 380,
                padding: EdgeInsets.all(25),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: 140,
                        margin: EdgeInsets.only(top: 40.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 5.0,
                          ),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(configvar.profileImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 12.0,
                        ),
                        child: Text(
                          "Flutter Shyam",
                          style: GoogleFonts.comfortaa(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 12.0,
                        ),
                        child: Text(
                          "BCA SEMESTER-3 STUDENT",
                          style: GoogleFonts.rubik(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w100,
                            letterSpacing: 1.1,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 262,
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '1000 ',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Followers',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.white70,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 60,
                              width: 1,
                              color: Colors.grey[400],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '1200 ',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Following',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.white70,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.email,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Email',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 35, top: 10),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'FlutterShyam123456@yahoo.com',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 0.9,
                          height: 28,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.mobile_friendly,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Mobile',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 35, top: 10),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '1234567890',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 0.9,
                          height: 28,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.facebook,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Facebook',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 35, top: 10),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'FlutterShyam',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 0.9,
                          height: 28,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        FontAwesomeIcons.github,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Github',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 35, top: 10),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'FlutterShyam',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 0.9,
                          height: 28,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        FontAwesomeIcons.discord,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Discord',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 35, top: 10),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'FlutterShyam#7495',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

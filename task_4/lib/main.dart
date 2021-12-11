import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task_3/news.dart';

void main() {
  runApp(const MaterialApp(
    home: Portfolio(),
  ));
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('My Profile'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Container(
                    color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: const EdgeInsets.fromLTRB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: const Image(
                                      image: AssetImage('assets/dev-pic.png'))),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          child: const Text(
                            'Devkrishnan V.A',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          child: const Text(
                            'Mobile App Developer',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontStyle: FontStyle.italic),
                          ),
                        )
                      ],
                    )),
              ),
              Expanded(
                child: Container(
                    color: Colors.blue,
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.mail,
                              size: 30.0,
                              color: Colors.amber,
                            ),
                            Container(
                              width: 1,
                              height: 30,
                              color: Colors.amber,
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5, 7.5, 0, 0),
                              child: const Text(
                                'devanswinikumar8@gmail.com',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.phone_android,
                                size: 30.0,
                                color: Colors.amber,
                              ),
                              Container(
                                width: 1,
                                height: 30,
                                color: Colors.amber,
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(5, 0, 44, 0),
                                child: const Text(
                                  '+91 9074757442',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewsPage()));
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.amber),
                            child: const Text(
                              'View News',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}

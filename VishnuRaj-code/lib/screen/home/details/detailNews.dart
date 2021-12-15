import 'package:flutter/material.dart';
import 'package:newsapp/screen/home/widget/mainbar.dart';

class DetailNews extends StatelessWidget {
  static const routeName = 'DetailName';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.share,
              color: Colors.black,
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             // Main_bar(),
              const SizedBox(height:8),
             
            ],
          ),
        ),
      )),
    );
  }
}

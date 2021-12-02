import 'package:edwin/Screens/home/widgets/main_bar.dart';
import 'package:flutter/material.dart';

class DetailNews extends StatelessWidget {
  static const routename = 'DetailNews';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [MainBar(), const SizedBox(height: 10), Text('Gaming is taken to a Next LEVEL, now we can game any high end games easily with a tablet size easy portable gaming and mini workstation.The fact is that gaming community is growing very fast now a days, so people are in search of powerful devices which is more compatable for their use.So all this in mind the company has created the next GEN type model thing that people can use anywhere even while you take a shit! . ')],
          ),
        ),
      )),
    );
  }
}

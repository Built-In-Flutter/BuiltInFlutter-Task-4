import 'package:flutter/material.dart';
import 'package:newsapp/screen/home/widget/main_bar.dart';

class DetailNews extends StatelessWidget {
  static const routName = 'DetailNews';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
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
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainBar(),
              SizedBox(
                height: 10,
              ),
              Text(
                "Dassault Rafale (French pronunciation: ​[ʁafal], literally meaning gust of wind, and burst of fire in a more military sense) is a French twin-engine, canard delta wing, multirole fighter aircraft designed and built by Dassault Aviation. Equipped with a wide range of weapons, the Rafale is intended to perform air supremacy, interdiction, aerial reconnaissance, ground support, in-depth strike, anti-ship strike and nuclear deterrence missions. The Rafale is referred to as an omnirole aircraft by Dassault. Introduced in 2001, the Rafale is being produced for both the French Air Force and for carrier-based operations in the French Navy. The Rafale has been marketed for export to several countries, and was selected for purchase by the Egyptian Air Force, the Indian Air Force, the Qatar Air Force, the Hellenic Air Force, and the Croatian Air Force. The Rafale has been used in combat over Afghanistan, Libya, Mali, Iraq and Syria.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

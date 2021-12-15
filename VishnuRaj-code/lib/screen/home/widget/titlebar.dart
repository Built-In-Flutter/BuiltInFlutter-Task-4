 import 'package:flutter/material.dart';
 import 'package:newsapp/screen/home/config/var/var.dart' as configvar;
 import 'package:newsapp/screen/home/details/detailNews.dart';

 import 'mainbar.dart';
 class titlebar extends StatelessWidget {
   const titlebar({
     Key? key,
     required this.screenWidth,
   }) : super(key: key);

  final double screenWidth;

   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.symmetric(vertical:10,horizontal:8),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text('Breaking News',style:Theme.of(context).primaryTextTheme.headline4,),
           const SizedBox(height:10),
             GestureDetector (
               onTap:() {Navigator.of(context).pushNamed(DetailNews.routeName);},
    
        ),
          
        ],
      ),
    );
   }
}



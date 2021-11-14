import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class BottomTaskBar  extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
       height:MediaQuery.of(context).size.height*0.001,
       width: MediaQuery.of(context).size.width *1,
       decoration: const BoxDecoration(
         
         
         ),
      child: Row(children: [
        IconButton(onPressed: (){}, 
        icon: Icon(Icons.home))
      ],) ,
    );
  }
}
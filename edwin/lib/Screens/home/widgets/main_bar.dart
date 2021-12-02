import 'package:flutter/material.dart';
import 'package:edwin/Screens/config/var/var.dart' as configvar;

class MainBar extends StatelessWidget {
  const MainBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.network(configvar.newspaperImage),
        ),
        const SizedBox(height: 10),
        Container(
          width: screenWidth * 0.8,
          child: Text(
            'Portable Gaming Setup',
            style: Theme.of(context).primaryTextTheme.headline5,
          ),
        ),
        const SizedBox(height: 15),
         // Row(
           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //children: [
              //Row(
                //children: [
                  //CircleAvatar(
                    //radius: 22,
                    //backgroundImage: NetworkImage(configvar.profileImage),
                  //),
                  //const SizedBox(width: 10),
                  //Text(
                   // 'Edwin',
                    //style: Theme.of(context).textTheme.bodyText1,
                  //),
               // ],
             // ),
              //Text(
                //    '21 oct, 2021',
                 //   style: Theme.of(context).textTheme.bodyText1,
                //  ),
           // ],  
         // ),
         // const Divider(thickness: 2),
      ],
    );
  }
}
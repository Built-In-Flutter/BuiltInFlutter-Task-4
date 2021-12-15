import 'package:flutter/material.dart';
import 'package:newsapp/screen/home/config/var/var.dart' as configvar;
import 'package:newsapp/screen/home/details/detailNews.dart';
class CustomAppbar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10,horizontal:8),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           GestureDetector(
            onTap: () {
            
            },
             
               child: CircleAvatar(
                   radius: 24,
                   backgroundImage: NetworkImage(configvar.profileImage),
               ),
             ),
           
             const SizedBox(width: 60),
             Text('23-Nov-2021',
                 style: Theme.of(context).textTheme.bodyText1),
           
           Icon(Icons.search, size: 30)
         ],
         ),
           );
         
       
    
    
  }
}
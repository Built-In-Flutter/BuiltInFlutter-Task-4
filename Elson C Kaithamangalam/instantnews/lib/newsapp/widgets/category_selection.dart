import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

enum Selected{
    allnews,business,politics,tech,science
}
 
 Selected selectedButton=Selected.allnews;



class CategorySelection extends StatefulWidget {
  

  

  @override
  State<CategorySelection> createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {

final List buttonNames=[
                {'btnname':'All news','btnkey':Selected.allnews},
                {'btnname':'Business','btnkey':Selected.business},
                {'btnname':'Politics','btnkey':Selected.politics}, 
                {'btnname':'Tech','btnkey':Selected.tech},
                {'btnname':'Science','btnkey':Selected.science},];

Widget txtbtns(String btnname,bool is_selected){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(onPressed: (){
          setState(() {
            switch(btnname){
              case 'All news':
                selectedButton=Selected.allnews;
                break;
              case 'Business':
                selectedButton=Selected.business;
                break;
              case 'Politics':
                selectedButton=Selected.politics;
                break;
              case 'Tech':
                selectedButton=Selected.tech;
                break;
              case 'Science':
                selectedButton=Selected.science;
                break;
            }
          });
        }, child: Text(btnname,style:  TextStyle(color:  Colors.black,
        fontSize: 15,fontWeight: is_selected?FontWeight.bold:FontWeight.w300),)),
      if(is_selected)Container(
        
        height: 5,
        width: 40,
        
        color: Colors.red,
      )],
    );
}

  
  
  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: 
          buttonNames.map((item) => txtbtns(item['btnname'],
          selectedButton==item['btnkey']? true:false)).toList()
            
        ,)
        ,
    );
  }
}
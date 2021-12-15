import 'package:flutter/material.dart';
typedef void IntCallback(String category);
class Category_List extends StatelessWidget {
  final IntCallback onCategoryChanged;
  const Category_List({
    Key? key,required this.onCategoryChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Container(
      
       color: Colors.white70,
      height: 50,
      
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          
          child: Text('All'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Sports'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Global'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Business'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Technology'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Shopping'),
      
        ),
       Padding(
          padding: EdgeInsets.all(8.0),
          
          child: Text('Space'),
         ),],
      )

    );
  }
}


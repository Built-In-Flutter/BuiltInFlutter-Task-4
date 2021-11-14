import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instantnews/newsapp/widgetItems/news_list_items.dart';
import 'package:instantnews/newsapp/widgetItems/newsapplogo.dart';
import 'package:instantnews/newsapp/widgets/category_selection.dart';

import 'models/articles.dart';
import 'news.dart';


class  NewsApp extends StatefulWidget {
 
 
   
  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  
  
  
 
    
  
     
   @override
  Widget build(BuildContext context) {

  
    return 
       MaterialApp(
         debugShowCheckedModeBanner: false,
         home: Scaffold(
          body: 
             SafeArea(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children:  [
                 Padding(
                   padding:  EdgeInsets.all(20),
                   child: newsLogo(),
                 ),
                  CategorySelection(),
       
                FutureBuilder<Article>(
                  future:  News().getNews(),
                     builder: ( context,  snapshot) {

                
                if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Container(
                        
                          padding: EdgeInsets.only(top:20,left: 20),
                          width: MediaQuery.of(context).size.width*0.9,
                          height: MediaQuery.of(context).size.height*0.25,
                          
                          
                          child:Stack(
                            
                            children: [
                             
                              Container(
                                width: MediaQuery.of(context).size.width*0.9,
                               height: MediaQuery.of(context).size.height*0.25,
                              
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                 image: NetworkImage(snapshot.data!.articles[10].urlToImage),fit:BoxFit.fill,
                                 color: Color.fromRGBO(255, 255, 255, 40),
                                colorBlendMode: BlendMode.modulate
                                ),
                              ),
                            ) ,
                              
                            
                      
                      Positioned(
                        bottom: 20,left: 20,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*0.7,
                          
                          
                          child: Container(
                            color: Colors.black54,
                            child: Text(snapshot.data!.articles[10].title,style: 
                                TextStyle(
                                  fontSize: 20,
                                color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],),),
                                  
                    

                  Padding(padding: EdgeInsets.only(top:40,bottom: 20,left: 20),
                  child: Text("Leading News",
                          style: TextStyle(fontSize: 30,
                          fontWeight: FontWeight.bold),),),
                  
                  Container(
                    height: MediaQuery.of(context).size.height*0.4,
                    width: MediaQuery.of(context).size.width*0.8,
                      child: 
                        ListView.separated(itemBuilder: (ctx,index){
                         return newsListItems(snapshot.data!.articles[index].title,
                                   snapshot.data!.articles[index].urlToImage );
                      }, separatorBuilder: (ctx,index){
                    return const Divider(height: 20,);
                  }, 
                itemCount: snapshot.data!.articles.length),),

               // BottomTaskBar(),

                ] ,
              );
              
                  
          }
          else{
            
              return   Column(
                
                children: [
                  
                  Padding(
                    padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.3),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                  
                 
                    
                  
                ],
              );
           }
        },
          ),
             
       
         
                
                ],),
             ),
          
             
           ),
       );
  }

  

  Widget loading(){
        return 
        CircularProgressIndicator(backgroundColor: Colors.blue,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.blueGrey),) ;
  }
}
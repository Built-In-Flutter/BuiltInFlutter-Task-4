
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class ArticleView extends StatefulWidget {
  final String url;
  const ArticleView({ Key? key,required this.url }) : super(key: key);

  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {

  @override
  void initState() {
 if (Platform.isAndroid) WebView.platform = AndroidWebView();  
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Container(
     
      child: WebView(initialUrl: widget.url,),
      
    );
  }
}
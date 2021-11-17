// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        
        body: WebView(
          initialUrl: "https://xidoo.netlify.app/",
          javascriptMode: JavascriptMode.unrestricted,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: _crearBotones(),
      ),
    );
  }
}

Widget _crearBotones(){

    return  Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27),
        color: Colors.black87,
      ),
      margin: EdgeInsets.all(10),
      height: 80,
      width: 700,

      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

      FloatingActionButton(
        child: Icon(Icons.account_circle_rounded, color: Colors.black,),
          onPressed: null,
            backgroundColor: Colors.amber,),
              SizedBox(width: 10.0,),
      FloatingActionButton (
        child: Icon(Icons.shopping_basket, color: Colors.black,),
          onPressed: null,
           backgroundColor: Colors.amber,),
              SizedBox(width: 10.0,),
      FloatingActionButton (
        child: Icon(Icons.directions_bus, color: Colors.black,),
          onPressed: null,
            backgroundColor: Colors.amber,),
              SizedBox(width: 10.0,),
      FloatingActionButton (
        child: Icon(Icons.museum, color: Colors.black,),
          onPressed: null,
            backgroundColor: Colors.amber,),
              SizedBox(width: 10.0,),
      FloatingActionButton (
          child: Icon(Icons.message, color: Colors.black,),
            onPressed: null,
              backgroundColor: Colors.amber,),

      ]),
    );
}
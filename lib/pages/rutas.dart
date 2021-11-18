import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Rutas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text('vistaBetaRutas'),
      //),
        body: WebView(
          initialUrl: "https://xidoo.netlify.app/",
          javascriptMode: JavascriptMode.unrestricted,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: _crearBotones(),
    );
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
}
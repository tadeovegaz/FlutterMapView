import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/perfil.dart';
import 'package:flutter_application_1/pages/r_cultural.dart';
import 'package:webview_flutter/webview_flutter.dart';

class prueba extends StatefulWidget {
  @override
  State<prueba> createState() => _pruebaState();
}

class _pruebaState extends State<prueba> {

  int _paginaActual = 1;

  List<Widget> _paginas = [
    Rcultural(),
    Perfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text('vistaBetaRutas'),
      //),
        body: 
        WebView(
          initialUrl: "https://xidoo.netlify.app/",
          javascriptMode: JavascriptMode.unrestricted,
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
              setState(() {
                _paginaActual=index;
              });
            },
            currentIndex: _paginaActual,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_max_rounded), label: "Ruta Cultural"),
              BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_rounded), label: "Rutas"),
              BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_rounded), label: "Comercios")
          ],),
          //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          //floatingActionButton: _crearBotones(),
    );

  //     int _paginaActual = 1;

  // List<Widget> _paginas = [
  //   Rcultural(),
  //   Rutas(),
  //   Perfil(),
  // ];
  //       bottomNavigationBar: BottomNavigationBar(
  //           backgroundColor: Colors.black87,
  //           selectedItemColor: Colors.amber,
  //           onTap: (index){
  //             setState(() {
  //               _paginaActual=index;
  //             });
  //           },
  //           currentIndex: _paginaActual,
  //           items: [
  //             BottomNavigationBarItem(
  //               icon: Icon(Icons.museum),
  //               label: "Ruta Cultural"),
  //             BottomNavigationBarItem(
  //               icon: Icon(Icons.directions_bus), 
  //               label: "Rutas"),
  //             BottomNavigationBarItem(
  //               icon: Icon(Icons.shopping_basket), 
  //               label: "Comercios")
  //         ],),



  }
}
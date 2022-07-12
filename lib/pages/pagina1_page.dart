import 'package:flutter/material.dart';
import 'package:transicionesapp/pages/pagina2_page.dart';


class Pagina1Page extends StatelessWidget {
 
  const Pagina1Page({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: Center(
        child: const Text('Pagina 1'),
     ),

     floatingActionButton: FloatingActionButton(
      child: Icon(Icons.scale),
      onPressed: (){

          Navigator.push(context, _crearRuta());

      },
     ),
   );
  }
  
  Route _crearRuta() {

      return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) 
        => Pagina2Page(), 
        transitionDuration: const Duration(seconds: 2),
        transitionsBuilder:(context, animation, secondaryAnimation, childPage){

            //Tipo de animación
            final curveAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);

            /*return SlideTransition(

              position: Tween<Offset>( 
                //desde que coordenada arranca la animación
                begin: Offset(0.5,1.0),
                //Si el offset fuera:
                //(0.0, -1.0) La transición comienza de arriba para abajo
                //(-0.5,1.0), La animación comienza de la parte inferior izquierda
                //En zero para que "reemplace" el lugar de la pantalla anterior
                end: Offset.zero
                ).animate(curveAnimation),
                //Toma el page al que se indica que estamos navegando
                child: childPage,
            );*/

            /*return ScaleTransition(
              scale: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
              child: childPage,
           );*/

           /*return RotationTransition(
            turns: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
            child: childPage,
          );*/

          /*return FadeTransition(
            opacity:  Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
            child: childPage,
         );*/

          //Combinadas
          return RotationTransition(
            turns: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
            child: FadeTransition(
                          opacity:  Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
                          child: childPage,
                      ),
          );

        }  
    );
  }
}
import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {
 
  const Pagina2Page({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: const Text('Pagina 2'),
     ),
   );
  }
}
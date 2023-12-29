import 'package:flutter/material.dart';

class Booklist extends StatelessWidget {
  const Booklist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listado de libros')),
      body: Container(
        child: Text('Libros de literatura'),
      ),
    );
  }
}
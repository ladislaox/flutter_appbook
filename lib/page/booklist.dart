import 'package:flutter/material.dart';
import 'package:flutter_applibros/page/bookdetail.dart';


class Booklist extends StatelessWidget {
  const Booklist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listado de libros')),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        children: [
          _bookCard(context),
          _bookCard(context),
          _bookCard(context),
          _bookCard(context),
          _bookCard(context),
          _bookCard(context),
          _bookCard(context),
          _bookCard(context),
          _bookCard(context),
          _bookCard(context),
          _bookCard(context),
          _bookCard(context),
        ],
      ),
    );
  }

  Widget _bookCard(context) {
    return GestureDetector(
      onTap: () => {
        print('gooooooo'),
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BookDetail(),
          )
        )
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0,right: 8.0),
          height: 150.0,
          width: 150.0,
          child: Column(
            children: [
              _bookCardImage(),
              const SizedBox(height: 8),
              _bookCardTitle(),
              const SizedBox(height: 8),
              _bookCardPrice(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bookCardImage() {
    return Container(
      width: 80.0,
      height: 80.0,
      child: const Placeholder()
    );
  }

  Widget _bookCardTitle() {
    return Container(
      child: const Text('El hombre mas rico de babilonia'),
    );
  }

  Widget _bookCardPrice() {
    return Container(
      alignment: Alignment.centerLeft,
      child: const Text(
        'S/90.00',
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

}
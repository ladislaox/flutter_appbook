import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle del Libro')
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            _bookinfo(),
            const SizedBox(height: 10),
            _bookcontent(),
          ],
        ),
      ),
    );
  }

  Widget _bookinfo() {
    return Row(
      children: [
        _coverimage(),
        _info()
      ],
    );
  }

  Widget _coverimage() {
    return Container(
      width: 80.0,
      height: 80.0,
      child: const Placeholder()
    );
  }

  Widget _info() {
    return Container(
      child: const Column(
        children: [
          Text('El hombre mas rico de babilonia'),
          Text('Autor: desconocido'),
          Text('S/90.00'),
        ],
      ),
    );
  }

  Widget _bookcontent() {
    return Container(
      child: const Column(
        children: [
          Text(
            'Capitulo 1',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 5),
          Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
        ],
      ),
    );
  }

}
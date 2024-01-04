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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _bookicons(icono: Icon(Icons.star, size: 20.0, color: Color.fromARGB(255, 103, 103, 103)), title: 'Valoración'),
                _bookicons(icono: Icon(Icons.book, size: 20.0, color: Color.fromARGB(255, 103, 103, 103)), title: 'Ebook'),
                _bookicons(icono: Icon(Icons.headset, size: 20.0, color: Color.fromARGB(255, 103, 103, 103)), title: 'Audiolibro'),
                _bookicons(icono: Icon(Icons.contact_page_rounded, size: 20.0, color: Color.fromARGB(255, 103, 103, 103)), title: 'Paginas'),
              ],
            ),
            const SizedBox(height: 5),
            _bookbuy(),
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
        const SizedBox(width: 10.0),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('El hombre mas rico de babilonia',style: TextStyle(fontSize: 16.0)),
          Text('Autor: desconocido',style: TextStyle(fontSize: 12.0)),
          Text('Publicado 4 Enero 2024',style: TextStyle(fontSize: 12.0)),
        ],
      ),
    );
  }

  Widget _bookicons({required Icon icono, String title=''}){
    return Container(
      child: Row(
        children: [
          Column(
            children: [
                icono,
                SizedBox(height: 0),
                Text(title, style: TextStyle(fontSize: 12.0)),
            ],
          ),
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

  Widget _bookbuy(){
    return Container(
        child: TextButton(
          onPressed: () {
            print('comprando');
          },
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 86, 157), // Color de fondo del botón
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 0),
            child: Text(
              'Comprar  PEN 90.00',
              style: TextStyle(fontSize: 14.0, color: Colors.white),
            ),
          ),
        )
    );
  }

}
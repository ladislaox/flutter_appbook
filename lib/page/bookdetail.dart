import 'package:flutter/material.dart';
import 'package:flutter_applibros/page/book.dart';

class BookDetail extends StatelessWidget {
  //const BookDetail({super.key});

  final Book mybook;
  BookDetail({required this.mybook, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalle del Libro')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              _bookinfo(),
              const SizedBox(height: 10),
              _bookvalorizacion(),
              const SizedBox(height: 5),
              // _bookbuy(),
              _bookbuyv2(bookprice: mybook.price),
              const SizedBox(height: 10),
              _bookcontent(bookcontent: mybook.content),
              _bookform(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bookinfo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _coverimage(bookimage: mybook.imageUrl),
        const SizedBox(width: 10.0),
        Expanded(
          child: _info(
            booktitle: mybook.title,
            bookauthor: mybook.author,
            bookpublication: mybook.fechapubliacion,
          ),
        )
      ],
    );
  }

  Widget _bookvalorizacion() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _bookicons(
              icono: Icon(Icons.star,
                  size: 20.0, color: Color.fromARGB(255, 103, 103, 103)),
              title: 'Valoración'),
          _bookicons(
              icono: Icon(Icons.book,
                  size: 20.0, color: Color.fromARGB(255, 103, 103, 103)),
              title: 'Ebook'),
          _bookicons(
              icono: Icon(Icons.headset,
                  size: 20.0, color: Color.fromARGB(255, 103, 103, 103)),
              title: 'Audiolibro'),
          _bookicons(
              icono: Icon(Icons.contact_page_rounded,
                  size: 20.0, color: Color.fromARGB(255, 103, 103, 103)),
              title: 'Paginas'),
        ],
      ),
    );
  }

  Widget _coverimage({required bookimage}) {
    return Container(
        // color: Colors.red,
        width: 150.0,
        height: 200.0,
        child: Image.asset(
          // ignore: prefer_interpolation_to_compose_strings
          'assets/img/' + bookimage,
          width: 150.0,
          height: 150.0,
        ));
  }

  Widget _info({
    required booktitle,
    required bookauthor,
    required bookpublication,
  }) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(booktitle,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
          Text('Autor: $bookauthor', style: TextStyle(fontSize: 12.0)),
          Text('Publicado $bookpublication', style: TextStyle(fontSize: 12.0)),
        ],
      ),
    );
  }

  Widget _bookicons({required Icon icono, String title = ''}) {
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

  Widget _bookcontent({required String bookcontent}) {
    return Container(
      child: Column(
        children: [
          // Text(
          //   'Capitulo 1',
          //   style: TextStyle(fontSize: 20),
          // ),
          SizedBox(height: 5),
          Text(bookcontent),
        ],
      ),
    );
  }

  Widget _bookbuy() {
    return InkWell(
        child: TextButton(
      onPressed: () {
        print('comprando');
      },
      style: TextButton.styleFrom(
        backgroundColor:
            const Color.fromARGB(255, 0, 86, 157), // Color de fondo del botón
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
    ));
  }

  Widget _bookbuyv2({required bookprice}) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      child: Material(
        color: const Color.fromARGB(255, 0, 86, 157),
        child: InkWell(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
              child: Text(
                'Comprar PEN $bookprice',
                style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          onTap: () {
            print("Holaaa");
          },
        ),
      ),
    );
  }

  Widget _bookform(){
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, left: 8.0, right: 8.0, bottom: 30.0),
      child: Column(
        children: [
          const Text('FORMULARIO DE REGISTRO'),
          TextFormField(
              decoration: const InputDecoration(labelText: 'Nombre'),
          ),
          TextFormField(
              decoration: const InputDecoration(labelText: 'Apellido'),
          ),
          TextFormField(
              decoration: const InputDecoration(labelText: 'Correo electrónico'),
          ),
          _btnRegistrar(),
          _btnRegistrarGoogle(),
        ],
      ),
    );
  }

  Widget _btnRegistrar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
      child: AnimatedContainer(
        duration: const Duration(seconds: 2),
        child: Material(
          color: const Color.fromARGB(255, 0, 86, 157),
          child: InkWell(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
                child: Text(
                  'Registrarse',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            onTap: () {
              print("registrado");
            },
          ),
        ),
      ),
    );
  }

  Widget _btnRegistrarGoogle(){
      return Column(
        children: [
          Image.asset(
            'assets/img/boton-google.png',
            width: 150.0,
          ),
        ],
      );
  }

}

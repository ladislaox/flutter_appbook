import 'package:flutter/material.dart';
import 'package:flutter_applibros/page/book.dart';
import 'package:flutter_applibros/page/bookdetail.dart';

class Booklist extends StatelessWidget {
  const Booklist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listado de libros')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Número de columnas en el grid
          crossAxisSpacing: 8.0, // Espaciado entre columnas
          mainAxisSpacing: 8.0, // Espaciado entre filas
          childAspectRatio:
              0.7, // Relación de aspecto (ajusta según tus necesidades)
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookCard(book: books[index]);
        },
        // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final Book book;

  BookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        print('gooooooo'),
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookDetail(mybook: book),
            ))
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
          // height: 400.0,
          width: 150.0,
          child: Column(
            children: [
              _bookCardImage(imgurl: book.imageUrl),
              const SizedBox(height: 8),
              _bookCardTitle(title: book.title),
              const SizedBox(height: 8),
              _bookCardPrice(price: book.price),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bookCardImage({required imgurl}) {
    return Container(
      width: 80.0,
      height: 120.0,
      child: Image.asset(
        // ignore: prefer_interpolation_to_compose_strings
        'assets/img/' + imgurl,
        width: 50.0,
        height: 50.0,
      ),
    );
  }

  Widget _bookCardTitle({required title}) {
    return Container(
      child: Text(
        title,
      ),
    );
  }

  Widget _bookCardPrice({required price}) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        'S/$price',
        textAlign: TextAlign.start,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

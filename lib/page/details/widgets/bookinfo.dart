import 'package:flutter/material.dart';
import 'package:flutter_applibros/page/models/book.dart';

class Bookinfo extends StatelessWidget {
  final Book mybook;
  const Bookinfo({required this.mybook});

  @override
  Widget build(BuildContext context) {
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
}

import 'package:flutter/material.dart';

class Valorizacion extends StatelessWidget {
  const Valorizacion({super.key});

  @override
  Widget build(BuildContext context) {
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
}

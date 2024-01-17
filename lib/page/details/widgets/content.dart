import 'package:flutter/material.dart';
import 'package:flutter_applibros/page/models/book.dart';

class Content extends StatelessWidget {
  final Book mybook;
  const Content({required this.mybook});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Text(
          //   'Capitulo 1',
          //   style: TextStyle(fontSize: 20),
          // ),
          SizedBox(height: 5),
          Text(mybook.content),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_applibros/page/models/book.dart';

class BtnBuy extends StatelessWidget {
  final Book mybook;
  const BtnBuy({required this.mybook});

  @override
  Widget build(BuildContext context) {
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
                'Comprar PEN ${mybook.price}',
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
}

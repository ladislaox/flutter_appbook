import 'package:flutter/material.dart';
import 'package:flutter_applibros/page/details/widgets/bookinfo.dart';
import 'package:flutter_applibros/page/details/widgets/btnBuy.dart';
import 'package:flutter_applibros/page/details/widgets/content.dart';
import 'package:flutter_applibros/page/details/widgets/form.dart';
import 'package:flutter_applibros/page/details/widgets/valorizacion.dart';
import 'package:flutter_applibros/page/models/book.dart';

class BookDetail extends StatelessWidget {
  final Book mybook;
  BookDetail({required this.mybook, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalle del Libro')),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Bookinfo(mybook: mybook),
                  const SizedBox(height: 10),
                  const Valorizacion(),
                  const SizedBox(height: 5),
                  BtnBuy(
                    mybook: mybook,
                  ),
                  const SizedBox(height: 10),
                  Content(mybook: mybook),
                  BookForm()
                ],
              ),
            ),
          ),
          // _bookModal(),
          // _BookModalMediodePago(),
        ],
      ),
    );
  }

  Widget _bookModal() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white.withOpacity(0.5),
        )
      ],
    );
  }

  Widget _btnCerrarModal() {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            // Lógica cuando se presiona el botón
            print('Cerrar modal');
          },
          child: const Text(
            'Cerrar',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

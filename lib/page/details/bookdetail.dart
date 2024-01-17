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

  Widget _BookModalMediodePago() {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
              width: 290.0,
              height: 300.0,
              color: Color.fromARGB(255, 215, 212, 212),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _btnMedioPago(mediopago: 'Pago con Plin'),
                  _btnMedioPago(mediopago: 'Pago con Yape'),
                  _btnMedioPago(mediopago: 'Pago con Tarjeta de Credito'),
                  _btnMedioPago(mediopago: 'Pago con Tarjeta de Débito'),
                  _btnCerrarModal(),
                ],
              )),
        )
      ],
    );
  }

  Widget _btnMedioPago({required mediopago}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
      child: AnimatedContainer(
        duration: const Duration(seconds: 2),
        child: Material(
          color: Color.fromARGB(255, 107, 118, 125),
          child: InkWell(
            child: Container(
              width: 230.0,
              padding: const EdgeInsets.all(10.0),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
                child: Text(
                  mediopago,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            onTap: () {
              print(mediopago);
            },
          ),
        ),
      ),
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

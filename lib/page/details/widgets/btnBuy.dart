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
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                      title: Text('Metodo de pago'),
                      // icon: Icon(Icons.payment),
                      actions: [
                        TextButton(
                          child: Text('Cerrar'),
                          onPressed: () => Navigator.pop(context, 'Cerrar'),
                        ),
                      ],
                      content: Container(
                          // width: 290.0,
                          height: 250.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _btnMedioPago(mediopago: 'Pago con Plin'),
                              _btnMedioPago(mediopago: 'Pago con Yape'),
                              _btnMedioPago(
                                  mediopago: 'Pago con Tarjeta de Credito'),
                              _btnMedioPago(
                                  mediopago: 'Pago con Tarjeta de Débito'),
                            ],
                          )));
                });
          },
        ),
      ),
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
}

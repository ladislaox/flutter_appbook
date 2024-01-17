import 'package:flutter/material.dart';

class BookForm extends StatelessWidget {
  const BookForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 40.0, left: 8.0, right: 8.0, bottom: 30.0),
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

  Widget _btnRegistrarGoogle() {
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

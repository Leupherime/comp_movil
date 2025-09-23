import 'package:flutter/material.dart';

class TextField extends StatelessWidget {
  final String nombre;
  final double height;
  TextField(this.nombre, this.height);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container (
        width: 180,
        color: Colors.cyan,
        child: Row(
          children: [ 
            Text('Nombre'),
            Container(
              width: 120,
              height: 20,
              color: Colors.white,
              //child: TextField(
              //  obscureText: true,
              //  decoration: InputDecoration(border: OutlineInputBorder()),
              //),
            )
          ],
        ),
      ),
    );
  }
}
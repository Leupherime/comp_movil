import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final double height;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.label,
    required this.height,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        width: 200,
        color: const Color.fromRGBO(63, 83, 100, 1), // Fondo general
        child: Row(
          children: [
            // Label a la izquierda
            Container(
              width: 60,
              height: 35,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                label,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 5),
            // Campo de texto funcional con fondo blanco
            SizedBox(
              width: 125,
              height: height,
              child: TextField(
                controller: controller,
                maxLines: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
                  isDense: true,
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

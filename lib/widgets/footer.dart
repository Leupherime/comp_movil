import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Text(
              'Avda. Nueva Providencia 1881.\n'
              'Oficina 1620. Providencia |\n'
              'Santiago Chile\n'
              'ventas@tyschile.cl\n'
              'www.tyschile.cl',
              style: TextStyle(fontSize: 9),
            ),
          ),
          Flexible(
            child: Image.network(
              'https://www.tyschile.cl/images/mp.png',
              fit: BoxFit.contain,
              height: 108,
            ),
          ),
        ],
      ),
    );
  }
}

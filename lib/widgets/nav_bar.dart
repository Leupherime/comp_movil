import 'package:flutter/material.dart';
import '../screen/screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Imagen que ocupa todo el ancho
        Image.network(
          'https://www.tyschile.cl/images/tys.png',
          width: double.infinity, // ocupa todo el ancho disponible
          height: 45, // ajusta según necesites
          fit: BoxFit.cover, // se adapta y mantiene proporción
        ),

        // Barra de botones
        Container(
          color: const Color.fromRGBO(63, 83, 100, 1),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const InicioScreen()),
                    );
                  },
                  child: const Text(
                    'Inicio',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const QuienesSomosScreen()),
                    );
                  },
                  child: const Text(
                    'Quienes Somos',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SolucionesServiciosScreen()),
                    );
                  },
                  child: const Text(
                    'Soluciones y Servicios',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ContactoScreen()),
                    );
                  },
                  child: const Text(
                    'Contacto',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
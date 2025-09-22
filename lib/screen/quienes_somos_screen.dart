import 'package:comp_movil/widgets/footer.dart';
import 'package:comp_movil/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class QuienesSomosScreen extends StatelessWidget{
  const QuienesSomosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            
            // Imagen de encabezado con Navegador
            const NavBar(),

            //Contenido de la pagina
            Image.network('https://www.tyschile.cl/images/quienessomos.jpg'),
            Image.network('https://www.tyschile.cl/images/sombra.png'),
            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Nuestro equipo y experiencia',
                style: TextStyle(fontSize: 12),
              ),
            ),

            //Final de pagina
            const Footer(),
          ],
        ),
      ),
    );
  }
}
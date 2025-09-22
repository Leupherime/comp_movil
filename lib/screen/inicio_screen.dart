import 'package:comp_movil/widgets/footer.dart';
import 'package:comp_movil/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

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
            Image.network('https://www.tyschile.cl/images/foto1.jpg'),
            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Queremos ser líderes en \nSoluciones de Productividad',
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
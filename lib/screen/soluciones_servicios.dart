import 'package:comp_movil/widgets/footer.dart';
import 'package:comp_movil/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class SolucionesServiciosScreen extends StatelessWidget{
  const SolucionesServiciosScreen({super.key});

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
            

            //Final de pagina
            const Footer(),
          ],
        ),
      ),
    );
  }
}
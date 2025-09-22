import 'package:comp_movil/widgets/footer.dart';
import 'package:comp_movil/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class ContactoScreen extends StatelessWidget{
  const ContactoScreen({super.key});

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
            Image.network('https://www.tyschile.cl/images/fotocontacto.jpg'),
            Image.network('https://www.tyschile.cl/images/sombra.png'),
            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'CONTACTO',
                style: TextStyle(fontSize: 12),
              ),
            ),

            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container (
                        width: 180,
                        color: Colors.cyan,
                        child: Row(
                          children: [
                            Text('Nombre'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container (
                        width: 180,
                        color: Colors.cyan,
                        child: Row(
                          children: [
                            Text('Correo'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container (
                        width: 180,
                        color: Colors.cyan,
                        child: Row(
                          children: [
                            Text('Asunto'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container (
                        width: 180,
                        color: Colors.cyan,
                        child: Row(
                          children: [
                            Text('Mensaje'),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
                //el mapa va aquí
              ],
            ),

            //Final de pagina
            const Footer(),
          ],
        ),
      ),
    );
  }
}
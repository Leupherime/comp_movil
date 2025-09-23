
import 'package:comp_movil/widgets/footer.dart';
import 'package:comp_movil/widgets/nav_bar.dart';
import 'package:comp_movil/widgets/textfield.dart';
import 'package:flutter/material.dart';

class ContactoScreen extends StatelessWidget {
  const ContactoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Controladores para capturar lo que el usuario escribe
    final nombreController = TextEditingController();
    final correoController = TextEditingController();
    final asuntoController = TextEditingController();
    final mensajeController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Navegador
            const NavBar(),

            // Contenido
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
            const SizedBox(height: 20),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Columna del formulario
                  Expanded(
                    flex: 1, // Ajusta el tamaño relativo
                    child: Column(
                      children: [
                        CustomTextField(
                          label: 'Nombre',
                          height: 20.0,
                          controller: nombreController,
                        ),
                        CustomTextField(
                          label: 'Correo',
                          height: 20.0,
                          controller: correoController,
                        ),
                        CustomTextField(
                          label: 'Asunto',
                          height: 20.0,
                          controller: asuntoController,
                        ),
                        CustomTextField(
                          label: 'Mensaje',
                          height: 20.0,
                          controller: mensajeController,
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Manejo del envío de datos
                          },
                          child: const Text('Enviar Mail'),
                        ),
                      ],
                    ),
                  ),

                const SizedBox(width: 5), // Separación entre columnas

                // Columna de la imagen
                Expanded(
                  flex: 1, // Ajusta el tamaño relativo
                  child: Image.network(
                    'https://www.educarchile.cl/sites/default/files/2020-01/Portada_google_maps.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            //fin del contenido
            const Footer(),
          ],
        ),
      ),
    );
  }
}

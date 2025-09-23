import 'package:comp_movil/widgets/footer.dart';
import 'package:comp_movil/widgets/nav_bar.dart';
import 'package:comp_movil/widgets/Textfield.dart';
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
                    TextField('Nombre', 20.0),
                    TextField('Asunto', 20.0),
                    TextField('Mensaje', 60.0),
                    Container(
                      //width: 100.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(230, 230, 230, 1),
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0
                        )
                      ),
                      child: Text('Enviar Mail') //TextButton(onPressed: null, child: Text('Enviar Mail'))
                    )
                  ],
                ),
                //el mapa va aquí
                Image.network('https://www.educarchile.cl/sites/default/files/2020-01/Portada_google_maps.png', height: 200.0, width: 200.0,),
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

class TextField extends StatelessWidget {
  String nombre;
  double altura;
  
  TextField(this.nombre, this.altura, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container (
        width: 200,
        color: Colors.cyan,
        child: Row(
          children: [
            Container(
              width: 60.0,
              child: Text(nombre)
            ),
            Container(
              width: 140,
              height: altura,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                )
              ),
              //child: TextField(
              //  obscureText: false,
              //  decoration: InputDecoration(border: OutlineInputBorder()),
              //),
            )
          ],
        ),
      ),
    );
  }
}
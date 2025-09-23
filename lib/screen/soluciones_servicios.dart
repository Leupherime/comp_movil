import 'package:comp_movil/widgets/footer.dart';
import 'package:comp_movil/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class SolucionesServiciosScreen extends StatelessWidget {
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

            // Contenido de la página
            Image.network(
              'https://www.tyschile.cl/images/fotoprods.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Image.network(
              'https://www.tyschile.cl/images/sombra.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'NUESTRAS \nSOLUCIONES\nY SERVICIOS',
                style: TextStyle(fontSize: 12),
              ),
            ),
            const SizedBox(height: 20),
            // Menú lateral + Texto
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Columna izquierda con botones
                    Container(
                      width: 150,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _sideButton('Cloud'),
                          _sideButton('OnPremise'),
                          _sideButton('Consultoría'),
                          _sideButton('Services Management'),
                        ],
                      ),
                    ),

                    const SizedBox(width: 16),

                    // Texto explicativo a la derecha
                    Expanded(
                      child: SingleChildScrollView(
                        child: const Text(
                          'TyS Chile cuenta con experiencia y conocimiento en '
                          'Plataformas Microsoft, por lo tanto, tenemos las '
                          'competencias y certificaciones necesarias para brindar '
                          'soluciones y servicios en estas plataformas.\n\n'
                          'Los Servicios y Soluciones de TyS son integrales, '
                          'innovadoras y de alta calidad en el mercado TI con '
                          'servicios flexibles para entregar a su empresa la '
                          'capacidad tecnológica necesaria en el momento que la '
                          'requiera, evitando demoras e inversiones en activos '
                          'innecesarios.\n\n'
                          'Nuestros Servicios y Soluciones los hemos segmentado en: '
                          'Cloud, OnPremise, Consultoría y Services Management.\n\n'
                          'El valor agregado de TyS en estas soluciones se basa en '
                          'cuatro pilares: Conocimiento, Integración, Alianzas y '
                          'Flexibilidad.',
                          style: TextStyle(fontSize: 10, height: 1.4),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Final de página
            const Footer(),
          ],
        ),
      ),
    );
  }

  /// 🔹 Widget simple para botones del menú lateral
  Widget _sideButton(String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 94, 106, 114),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 14),
        textAlign: TextAlign.center,
      ),
    );
  }
}
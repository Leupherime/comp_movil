import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class SolucionesServiciosScreen extends StatelessWidget {
  const SolucionesServiciosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 988 / 136,
              child: const Image(
                image: NetworkImage('https://www.tyschile.cl/images/tys.png'),
                fit: BoxFit.contain,
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              width: double.infinity,
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(242, 110, 110, 110),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        textStyle: const TextStyle(fontSize: 13.5),
                      ),
                      onPressed: () => Navigator.pushNamed(context, 'inicio'),
                      child: const Text('Inicio'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(242, 110, 110, 110),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        textStyle: const TextStyle(fontSize: 13.5),
                      ),
                      onPressed: () => Navigator.pushNamed(context, 'quienes_somos'),
                      child: const Text('Quienes Somos'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(242, 110, 110, 110),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        textStyle: const TextStyle(fontSize: 13.5),
                      ),
                      onPressed: () => Navigator.pushNamed(context, 'soluciones_servicios'),
                      child: const Text('Soluciones y Servicios'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(242, 110, 110, 110),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        textStyle: const TextStyle(fontSize: 13.5),
                      ),
                      onPressed: () => Navigator.pushNamed(context, 'contacto'),
                      child: const Text('Contacto'),
                    ),
                  ],
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 16 / 6,
              child: const Image(
                image: NetworkImage('https://www.tyschile.cl/images/fotoprods.png'),
                fit: BoxFit.cover,
              ),
            ),
            LayoutBuilder(
              builder: (context, c) {
                final w = c.maxWidth;
                final dense = w < 760;
                final leftWidth =
                    w < 380 ? 140.0 : w < 480 ? 155.0 : w < 760 ? 180.0 : 260.0;
                final titleStyle = TextStyle(
                  color: const Color.fromARGB(255, 24, 161, 157),
                  fontWeight: FontWeight.w800,
                  fontSize: dense ? 16 : 22,
                  height: 1.05,
                  letterSpacing: 0.4,
                );
                final body = TextStyle(
                  fontSize: dense ? 13.5 : 15.5,
                  height: 1.55,
                  color: const Color.fromARGB(211, 0, 0, 0),
                );

                Widget sideButton(String text) => Container(
                      height: dense ? 40 : 50,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 94, 106, 114),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          text,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: dense ? 13 : 15,
                          ),
                        ),
                      ),
                    );

                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: leftWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('NUESTRAS SOLUCIONES Y SERVICIOS',
                                style: titleStyle),
                            const SizedBox(height: 12),
                            sideButton('Cloud'),
                            sideButton('OnPremise'),
                            sideButton('Consultoría'),
                            sideButton('Services Management'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: dense ? 6 : 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'TyS Chile cuenta con experiencia y conocimiento en Plataformas Microsoft necesarias para brindar soluciones y servicios en estas plataformas.',
                                style: body,
                              ),
                              Text(
                                'Los Servicios y Soluciones de TyS son integrales, innovadoras y de calidad, otorgando a su empresa la capacidad tecnológica necesaria en el momento que lo requiera.',
                                style: body,
                              ),
                              Text(
                                'Nuestros Servicios y Soluciones los hemos segmentado en: Cloud, OnPremise, Consultoría y Services Management.',
                                style: body,
                              ),
                              Text(
                                'El valor agregado de TyS en estas soluciones se basa en cuatro pilares fundamentales.',
                                style: body,
                              ),
                              ],
                       ),
                        ),
                   ),
                      ],
                   ),
                 );
              },
         ),
          ],
          ),
     ),
      );
  }
}
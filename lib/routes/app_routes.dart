// Se guardan las rutas que se utilizan en la app
import 'package:flutter/material.dart';
import '../screen/screen.dart';

class AppRoutes {
  static const initialRoute = 'inicio';
  static Map<String, Widget Function(BuildContext)> routes = {
    'inicio': (BuildContext context) => InicioScreen(),
    'quienes_somos': (BuildContext context) => QuienesSomosScreen(),
    'soluciones_servicios': (BuildContext context) => SolucionesServiciosScreen(),
    'contacto': (BuildContext context) => ContactoScreen()
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ErrorScreen());
  }
}
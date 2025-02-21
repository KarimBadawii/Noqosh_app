import 'package:flutter/material.dart';
import 'package:noqosh_app/config/routes/routes.dart';

import 'config/routes/route_generator.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
    initialRoute: Routes.paymentRoute,
    );
  }
}


import 'package:dcs_arman_aurobindo/pages/home.dart';
import 'package:dcs_arman_aurobindo/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:dcs_arman_aurobindo/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context) => const Home(),
        MyRoutes.homeRoute:(context) => const Home(),
      },
    );
  }
}

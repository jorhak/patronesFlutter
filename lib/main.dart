import 'package:flutter/material.dart';
import 'package:patrones/view/view_plantilla.dart';
import 'package:patrones/view/view_memento.dart';
import 'package:patrones/view/view_estrategia.dart';
import 'package:patrones/view/view_estrategia_serie.dart';
import 'package:patrones/view/view_plantilla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const EstrategiaView(),
    );
  }
}

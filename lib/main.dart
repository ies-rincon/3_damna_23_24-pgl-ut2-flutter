import 'package:flutter/material.dart';
import 'src/hello_world_dam_pgl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hola 3º DAM - PGL',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const HelloWorldDamPglPage(title: 'Hola 3º DAM - PGL'),
    );
  }
}
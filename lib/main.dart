import 'package:flutter/material.dart';
import 'package:plataforma_tesis/Pages/Home/Home_Page.dart';
import 'package:plataforma_tesis/Pages/Platform/HomePlataform/HomePlataform.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePlataform(),
    );
  }
}

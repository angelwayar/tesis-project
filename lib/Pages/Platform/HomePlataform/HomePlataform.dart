import 'package:flutter/material.dart';
import 'package:plataforma_tesis/Pages/Platform/BottomBarNavigation/BottomBarNav.dart';
import 'package:plataforma_tesis/Pages/Platform/menuLateral/menuLateral.dart';
import 'package:plataforma_tesis/Pages/Platform/navbar/navbarPlataform.dart';

class HomePlataform extends StatelessWidget {
  const HomePlataform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFFC4C4C4),
        child: Stack(
          children: [
            NavBarPlatform(),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.1,
                child: MenuLateral()),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.5,
              left: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                onPressed: () {
                  print("Subir imagen");
                },
                child: Text("Subir image", style: TextStyle(fontSize: 26.0, color: Colors.black, fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFD600),
                  minimumSize: Size(80.0, 80.0),
                ),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.92,
                child: BottomBarNav()),
          ],
        ),
      ),
    );
  }
}

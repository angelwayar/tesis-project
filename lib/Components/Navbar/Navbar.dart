import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.black,
    minimumSize: Size(300, 100),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            child: Text(
              "Registrate",
              style: TextStyle(fontSize: 24.0),
            ),
            onPressed: () {},
            style: raisedButtonStyle,
          ),
          ElevatedButton(
            child: Text(
              "Inicio de Sesión",
              style: TextStyle(fontSize: 24.0),
            ),
            onPressed: () {
              setState(() {
                
              });              
            },
            style: raisedButtonStyle,
          )
        ],
      ),
      color: Colors.black,
    );
  }
}


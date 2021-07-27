import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      primary: Color(0xFFFFD600),
      minimumSize: Size(191, 56),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)));

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      width: _size.width,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Crear Cuenta",
              style: TextStyle(fontSize: 48.0, color: Colors.white)),
          SizedBox(height: 100.0),
          Container(
            height: 500.0,
            width: 300.0,
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email, color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      hintText: "Correo Electrónico",
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 15),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.password, color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      hintText: "Contraseña",
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 15),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.password, color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      hintText: "Contraseña",
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 15),
                    ),
                  ),
                  SizedBox(height: 100.0),
                  ElevatedButton(
                    child: Text(
                      "Registrar",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {},
                    style: raisedButtonStyle,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

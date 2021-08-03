import 'dart:math';

import 'package:flutter/material.dart';
import 'package:plataforma_tesis/Pages/Platform/HomePlataform/HomePlataform.dart';
import 'package:plataforma_tesis/services/requets.dart';

class LoginForm extends StatelessWidget {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    primary: Color(0xFFFFD600),
    minimumSize: Size(191.0, 56.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
  );
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 489.0,
      width: 641.0,
      child: Form(
        child: Padding(
          padding: const EdgeInsets.only(left: 94.0, right: 94.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Logo.png",
                height: 146.0,
                width: 171.0,
              ),
              SizedBox(height: 51.0),
              TextFormField(
                controller: emailController,
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
                controller: passwordController,
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
              ElevatedButton(
                child: Text(
                  "Iniciar Sesión",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  if ((emailController.text
                              .compareTo("angelmanuelwayar@gmail.com") ==
                          0) &&
                      (passwordController.text.compareTo("123456") == 0)) {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePlataform()));
                      }
                  // try {
                  // bool s = await login();

                  // if (s) {
                  // Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomePlataform()));
                  // }
                  // } catch (e) {
                  //   print("ERROR...!!!");
                  // }
                },
                style: raisedButtonStyle,
              ),
              Text("¿Olvido su contraseña?"),
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }

  Future<bool> login() async {
    return await loginUser(emailController.text, passwordController.text);
  }
}

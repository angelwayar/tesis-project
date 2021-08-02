import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:plataforma_tesis/Pages/Platform/BottomBarNavigation/BottomBarNav.dart';
import 'package:plataforma_tesis/Pages/Platform/menuLateral/menuLateral.dart';
import 'package:plataforma_tesis/Pages/Platform/navbar/navbarPlataform.dart';

class HomePlataform extends StatefulWidget {
  HomePlataform({Key? key}) : super(key: key);

  @override
  _HomePlataformState createState() => _HomePlataformState();
}

class _HomePlataformState extends State<HomePlataform> {
  FilePickerResult? result;
  bool subir = false;
  Uint8List? uploadFile;
  File? image;
  bool statemenu = false;

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
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: 80.0,
                  color: Colors.black,
                  child: Column(children: [
                    SizedBox(height: 80.0),
                    InkWell(
                      onTap: () {},
                      child: Image.asset("assets/images/city.png"),
                    ),
                    SizedBox(height: 100.0),
                    InkWell(
                      onTap: () {},
                      child: Image.asset("assets/images/search.png"),
                    ),
                    SizedBox(height: 100.0),
                    InkWell(
                        onTap: () {
                          setState(() {
                            statemenu = !statemenu;
                          });
                        },
                        child: Image.asset("assets/images/beach.png")),
                  ]),
                )),
            subir
                ? Positioned(
                    top: MediaQuery.of(context).size.height * 0.15,
                    left: MediaQuery.of(context).size.width * 0.2,
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Image.memory(uploadFile!)),
                  )
                : Positioned(
                    top: MediaQuery.of(context).size.height * 0.5,
                    left: MediaQuery.of(context).size.width * 0.5,
                    child: ElevatedButton(
                      onPressed: () async {
                        result = await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: ['jpg', 'png']);
                        if (result != null) {
                          setState(() {
                            subir = !subir;
                            uploadFile = result!.files.single.bytes;
                          });
                        }
                      },
                      child: Text("Subir image",
                          style: TextStyle(
                              fontSize: 26.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFD600),
                        minimumSize: Size(80.0, 80.0),
                      ),
                    ),
                  ),
            statemenu
                ? Positioned(
                    top: MediaQuery.of(context).size.height * 0.2,
                    left: MediaQuery.of(context).size.width * 0.4,
                    child: Container(
                      height: 387.0,
                      width: 571.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Mejoramiento bajo factor climatologico",
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                          Container(
                              height: 1.0, width: 450.0, color: Colors.black),
                          Text(
                            "Mejoramiento bajo factor neblina",
                            style: TextStyle(fontSize: 24),
                          ),
                          Container(
                              height: 1.0, width: 450.0, color: Colors.black),
                          Text(
                            "Mejoramiento bajo factor niebla",
                            style: TextStyle(fontSize: 24),
                          ),
                          Container(
                              height: 1.0, width: 450.0, color: Colors.black),
                          SizedBox(
                            height: 80,
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFF6C6C6C),
                          borderRadius: BorderRadius.circular(15)),
                    ))
                : Container(),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.92,
                child: BottomBarNav(showButtons: false)),
          ],
        ),
      ),
    );
  }
}

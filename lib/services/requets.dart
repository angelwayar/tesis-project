import 'dart:html';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';

import 'package:http/http.dart' as http;

var client = http.Client();

Future<bool> loginUser(String email, String password) async {
  var url = Uri.parse("localhost:8000/login/" + email + "/"+password);
  bool estado = false;
  try {
    final response = await http.get(url);

    // print(response.statusCode);
    // if(response.statusCode == 200) {
    //   return true;
    // }

  } catch (e) {
    throw "Error";
  }
  return estado;
}


Future<void> mejorarImagen() async {
  await Future.delayed(Duration(seconds: 2)); 
}
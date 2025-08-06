import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http; // conjunto de imports necessarios
import 'package:flutter/material.dart';
import 'home.dart';

const request = "https://api.fxratesapi.com/latest"; //endereço da api

void main() async {
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(hintColor: Colors.amber, primaryColor: Colors.white),
    ),
  );
}

Future<Map> getData() async {
  http.Response response = await http.get(Uri.parse(request));

  return json.decode(response.body);
}

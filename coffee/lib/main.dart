import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/all.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Home(),
      '/all': (context) => All(),
    },
  ));
}
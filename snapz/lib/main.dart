import 'package:flutter/material.dart';
import 'package:snapz/MainActivity.dart';
void main() => runApp(MainApp());
class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snapz',
      home: MainActivity(),
    );
  }
}
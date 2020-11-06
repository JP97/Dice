import 'package:flutter/material.dart';
import 'pages/dice_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.lightGreen.shade800,
            centerTitle: true),
        body: DicePage(),
      ),
    );
  }
}

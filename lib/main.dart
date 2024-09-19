import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Change App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColorChangeHomePage(),
    );
  }
}

class ColorChangeHomePage extends StatefulWidget {
  @override
  _ColorChangeHomePageState createState() => _ColorChangeHomePageState();
}

class _ColorChangeHomePageState extends State<ColorChangeHomePage> {
  Color _backgroundColor = Colors.white;

  // Function to generate a random color
  void _changeColor() {
    setState(() {
      _backgroundColor = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Change App'),
      ),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: ElevatedButton(
            onPressed: _changeColor,
            child: Text('Change Background Color'),
          ),
        ),
      ),
    );
  }
}

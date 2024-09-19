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
        primaryColor: Color(0xFF2196F3), // Initial primary color
        colorScheme: ColorScheme.light(
          primary: Color(0x000A79), // Initial primary color
          secondary: Color(0x005B86), // Initial secondary color
        ),
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

  void _changeColor() {
    setState(() {
      // Change background color to either primary or secondary color
      _backgroundColor = Random().nextBool()
          ? Theme.of(context).primaryColor
          : Theme.of(context).colorScheme.secondary;
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

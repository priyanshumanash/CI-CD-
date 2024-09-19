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
        primaryColor: Colors.blue, // This will be replaced
        colorScheme: ColorScheme.light(primary: Colors.blue, secondary: Colors.orange), // This will be replaced
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

  void _changeColor(Color primary, Color secondary) {
    setState(() {
      _backgroundColor = Random().nextBool() ? primary : secondary;
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
            onPressed: () => _changeColor(Theme.of(context).primaryColor, Theme.of(context).colorScheme.secondary),
            child: Text('Change Background Color'),
          ),
        ),
      ),
    );
  }
}

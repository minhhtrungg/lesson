import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomColorHomePage(),
    );
  }
}

class RandomColorHomePage extends StatefulWidget {
  @override
  _RandomColorHomePageState createState() => _RandomColorHomePageState();
}

class _RandomColorHomePageState extends State<RandomColorHomePage> {
  Color _backgroundColor = Colors.white;
  int _counter = 0;

  void _changeBackgroundColor() {
    setState(() {
      _counter++;
      if (_counter % 2 == 0) {
        _backgroundColor = Colors.red;
      } else {
        _backgroundColor = Colors.yellow;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Color App'),
        centerTitle: true,
      ),
      backgroundColor: _backgroundColor,
      body: Center(
        child: ElevatedButton(
          onPressed: _changeBackgroundColor,
          child: Text('Change Background Color $_counter'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyAppForLesson3());
}

class MyAppForLesson3 extends StatelessWidget {
  const MyAppForLesson3({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Lesson3HomePage());
  }
}

class Lesson3HomePage extends StatelessWidget {
  const Lesson3HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: const Center(
          child: Column(
        children: [
          Text('Lesson 3 - HomePage'),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {},
      ),
    );
  }
}

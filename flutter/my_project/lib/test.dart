import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyAppForLesson3());
}

// Define a custom MaterialColor based on green
const MaterialColor customGreen = MaterialColor(
  0xFF4CAF50, // base color green
  <int, Color>{
    50: Color(0xFFE8F5E9),
    100: Color(0xFFC8E6C9),
    200: Color(0xFFA5D6A7),
    300: Color(0xFF81C784),
    400: Color(0xFF66BB6A),
    500: Color(0xFF4CAF50),
    600: Color(0xFF43A047),
    700: Color(0xFF388E3C),
    800: Color(0xFF2E7D32),
    900: Color(0xFF1B5E20),
  },
);

class MyAppForLesson3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: customGreen, // Use custom green MaterialColor
        appBarTheme: const AppBarTheme(
          backgroundColor: customGreen, // Ensures AppBar is green
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: customGreen, // Ensures FAB is green
        ),
      ),
      home: Lesson3HomePage(),
    );
  }
}

class Lesson3HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<Lesson3HomePage> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Lesson 3 - HomePage'),
            const Text('Số lần click:'),
            Text('$counter'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

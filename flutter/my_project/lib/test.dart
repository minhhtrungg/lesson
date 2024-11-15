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
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Lesson 3 - HomePage'),
              Text('Số lần click:'),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://scontent.fsgn8-3.fna.fbcdn.net/v/t39.30808-6/465649058_122158654700267696_8318922429191506378_n.jpg?stp=cp6_dst-jpg&_nc_cat=109&ccb=1-7&_nc_sid=aa7b47&_nc_ohc=LXvPi9SgRxoQ7kNvgHkfOMO&_nc_zt=23&_nc_ht=scontent.fsgn8-3.fna&_nc_gid=A9u2pWCNVdIkguvQmPLH6n8&oh=00_AYB8KBfQ6mVdh536Gvv6Fh97wj5XhMzqW95Dq_-SMFfdcg&oe=673D7DD9',
                    width: 250,
                    height: 200,
                  ),
                ],
              ),
              TextField(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('hoan thanh'),
                    ),
                  );
                },
                child: Text('Click me'),
              ),
            ],
          ),
        ),
      )),
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
// 1 12 15
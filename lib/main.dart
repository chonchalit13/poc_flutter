import 'package:flutter/material.dart';
import 'package:poc_flutter/feature/search/search_screen.dart';
import 'package:poc_flutter/widget/Button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        '/search_screen': (context) => const SearchScreen()
      },
      initialRoute: "/",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Column(
        children: [
          Button(
            buttonName: "Search Page",
            onPressed: () {
              Navigator.pushNamed(context, "/search_screen");
            },
          ),
        ],
      ),
    );
  }
}

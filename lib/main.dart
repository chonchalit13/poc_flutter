import 'package:flutter/material.dart';
import 'package:poc_flutter/feature/gesture_detector/gesture_detector_screen.dart';
import 'package:poc_flutter/feature/search/search_screen.dart';
import 'package:poc_flutter/widget/Button.dart';

import 'feature/gesture_detector/gesture_detector_drag_screen.dart';

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
        '/search_screen': (context) => const SearchScreen(),
        '/gesture_detector_screen': (context) => const GestureDetectorScreen(),
        '/gesture_detector_drag_screen': (context) => const GestureDetectorDragScreen(),
        '/dismissible_screen': (context) => const GestureDetectorScreen(),
        '/absorb_pointer_screen': (context) => const GestureDetectorScreen(),
      },
      initialRoute: "/",
      theme: ThemeData(
        fontFamily: "SukhumvitSet",
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
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Button(
              buttonName: "Search Page",
              onPressed: () {
                Navigator.pushNamed(context, "/search_screen");
              },
            ),
            Button(
              buttonName: "GestureDetector",
              onPressed: () {
                Navigator.pushNamed(context, "/gesture_detector_screen");
              },
            ),
            Button(
              buttonName: "GestureDetectorDrag",
              onPressed: () {
                Navigator.pushNamed(context, "/gesture_detector_drag_screen");
              },
            ),
            Button(
              buttonName: "Dismissible",
              onPressed: () {
                Navigator.pushNamed(context, "/dismissible_screen");
              },
            ),
            Button(
              buttonName: "AbsorbPointer",
              onPressed: () {
                Navigator.pushNamed(context, "/absorb_pointer_screen");
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class GestureDetectorDragScreen extends StatefulWidget {
  const GestureDetectorDragScreen({super.key});

  @override
  State<GestureDetectorDragScreen> createState() =>
      _GestureDetectorDragScreenState();
}

class _GestureDetectorDragScreenState extends State<GestureDetectorDragScreen> {
  double _top = 50;
  double _left = 50;
  late double initX;
  late double initY;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: _top,
            left: _left,
            child: GestureDetector(
              onPanStart: (DragStartDetails details) {
                setState(() {
                  initX = details.globalPosition.dx;
                  initY = details.globalPosition.dy;
                });
              },
              onPanUpdate: (details) {
                setState(() {
                  _top = max(0, _top + details.delta.dy);
                  _left = max(0, _left + details.delta.dx);
                });

                // final dx = details.globalPosition.dx - initX;
                // final dy = details.globalPosition.dy - initY;
                // initX = details.globalPosition.dx;
                // initY = details.globalPosition.dy;
                // setState(() {
                //   _top = (_top + dy).clamp(0.0, double.infinity);
                //   _left = (_left + dx).clamp(0.0, double.infinity);
                // });
              },
              child: Image.asset(
                'images/deng_default.png',
                width: 90,
                height: 90,
              ),
            ),
          )
        ],
      ),
    );
  }
}

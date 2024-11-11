import 'package:flutter/material.dart';

class GestureDetectorScreen extends StatefulWidget {
  const GestureDetectorScreen({super.key});

  @override
  State<GestureDetectorScreen> createState() => _GestureDetectorScreenState();
}

class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
  bool _dengPop = false;

  void _pop() {
    setState(() {
      _dengPop = !_dengPop;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_dengPop) ...{
                const Column(
                  children: [
                    Text(
                      "พ่องมึง",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    )
                  ],
                )
              },
              GestureDetector(
                child: Image.asset(_dengPop
                    ? 'images/deng_pop.png'
                    : 'images/deng_default.png'),
                onTapDown: (_) {
                  _pop();
                },
                onTapUp: (_) {
                  _pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

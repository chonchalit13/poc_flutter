import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonName;

  const Button({super.key, required this.buttonName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            buttonName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          )),
    );
  }
}

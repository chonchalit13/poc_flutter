import 'package:flutter/material.dart';

class DismissibleScreen extends StatefulWidget {
  const DismissibleScreen({super.key});

  @override
  State<DismissibleScreen> createState() => _DismissibleScreenState();
}

class _DismissibleScreenState extends State<DismissibleScreen> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              background: Container(
                alignment: FractionalOffset.centerLeft,
                color: Colors.green,
                child: const Icon(
                  Icons.check_circle,
                  color: Colors.white,
                ),
              ),
              secondaryBackground: Container(
                alignment: FractionalOffset.centerRight,
                color: Colors.red,
                child: const Icon(
                  Icons.cancel,
                  color: Colors.white,
                ),
              ),
              key: ValueKey<int>(items[index]),
              onDismissed: (DismissDirection direction) {
                setState(() {
                  items.removeAt(index);
                });
              },
              child: ListTile(
                title: Text(
                  style: const TextStyle(fontSize: 16),
                  'Item ${items[index]}',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

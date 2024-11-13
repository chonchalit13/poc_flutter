import 'package:flutter/material.dart';

class AbsorbPointerScreen extends StatefulWidget {
  const AbsorbPointerScreen({super.key});

  @override
  State<AbsorbPointerScreen> createState() => _AbsorbPointerScreenState();
}

class _AbsorbPointerScreenState extends State<AbsorbPointerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                    width: 200.0,
                    height: 100.0,
                    child: ElevatedButton(
                      onPressed: () {
                        print("toei1");
                      },
                      child: null,
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    height: 200.0,
                    child: AbsorbPointer(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade200,
                        ),
                        onPressed: () {
                          print("toei2");
                        },
                        child: const Text("TOEI"),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  SizedBox(
                    width: 200.0,
                    height: 100.0,
                    child: ElevatedButton(
                      onPressed: () {
                        print("toei1");
                      },
                      child: null,
                    ),
                  ),
                  const IgnorePointer(
                    ignoring: true,
                    child: Icon(
                      Icons.lightbulb,
                      size: 80,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

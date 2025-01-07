import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Study-App', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Study-App')),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 0, 34, 61),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              verticalDirection: VerticalDirection.down,
              children: [
                Notification(key: Key('notification')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

/// A widget for the notification
class Notification extends StatelessWidget {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.red,
      ),
      padding: const EdgeInsets.all(20),
    );
  }
}

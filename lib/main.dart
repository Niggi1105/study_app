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
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
    return Stack(
      children: [
        Container(
          height: 150,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: const Color.fromARGB(255, 177, 12, 0),
          ),
          padding: const EdgeInsets.all(20),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                spacing: 10,
                children: [
                  Icon(
                    Icons.error,
                    color: Colors.white,
                    size: 30,
                  ),
                  Text(
                    'Meldung',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
                    child: Icon(Icons.close, color: Colors.white, size: 30),
                  ),
                ],
              ),
            ),
            Center(
              child: Text(
                'Eine Einschreibung für mündliche',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Center(
              child: Text(
                'Prüfungen hat begonnen und endet am',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Center(
              child: Text(
                '01.01.2022',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ],
        )
      ],
    );
  }
}

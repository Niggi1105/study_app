import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Study-App', home: Dashboard());
  }
}

/// This is the widget representing the dashboard of the app
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

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
              spacing: 16,
              children: [
                Notification(),
                Text('Donnerstag, 12. Dezember',
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                ExternLinks(),
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
          height: 135,
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
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class ExternLinks extends StatelessWidget {
  const ExternLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        OpalLink(),
        SelmaLink(),
        MatrixLink(),
        MailLink()
      ],
    );
  }
}

class OpalLink extends StatelessWidget {
  const OpalLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FloatingActionButton(
            onPressed: () {}, //TODO: Add link to Opal
            backgroundColor: Colors.lightBlue,
            child: Icon(Icons.attach_file, color: Colors.white,),
          ),
          Text('Opal', style: TextStyle(color: Colors.white, fontSize: 15)),
        ],
      ),
    );
  }
}

class SelmaLink extends StatelessWidget {
  const SelmaLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FloatingActionButton(
            onPressed: () {}, //TODO: Add link to Selma
            backgroundColor: const Color.fromARGB(255, 255, 136, 0),
            child: Icon(Icons.folder, color: Colors.white,),
          ),
          Text('Selma', style: TextStyle(color: Colors.white, fontSize: 15)),
        ],
      ),
    );
  }
}

class MatrixLink extends StatelessWidget {
  const MatrixLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FloatingActionButton(
            onPressed: () {}, //TODO: Add link to Matrix Chat
            backgroundColor: const Color.fromARGB(255, 0, 156, 117),
            child: Icon(Icons.chat_bubble, color: Colors.white,),
          ),
          Text('Matrix', style: TextStyle(color: Colors.white, fontSize: 15)),
        ],
      ),
    );
  }
}

class MailLink extends StatelessWidget {
  const MailLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FloatingActionButton(
            onPressed: () {}, //TODO: Add link to Mail
            backgroundColor: const Color.fromARGB(255, 255, 41, 173),
            child: Icon(Icons.mail, color: Colors.white,),
          ),
          Text('Mail', style: TextStyle(color: Colors.white, fontSize: 15)),
        ],
      ),
    );
  }
}
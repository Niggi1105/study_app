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
                Date(),
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

  //TODO: make this widget dynamic, and allow for it to be collapsed
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


class Date extends StatelessWidget {
  const Date({super.key});

  @override
  Widget build(BuildContext context) {
    var date = DateTime.now();
    var month = monthName(date.month);
    var day = date.day;
    var wd = weekdayName(date.weekday);
    return Text('$wd $day. $month',
        style: TextStyle(color: Colors.white, fontSize: 22));
  }
}

String weekdayName(int wd) {
  switch (wd) {
    case 1:
      return 'Montag';
    case 2:
      return 'Dienstag';
    case 3:
      return 'Mittwoch';
    case 4:
      return 'Donnerstag';
    case 5:
      return 'Freitag';
    case 6:
      return 'Samstag';
    case 7:
      return 'Sonntag';
    default:
      return '';
  }
}

String monthName(int month) {
  switch (month) {
    case 1:
      return 'Januar';
    case 2:
      return 'Februar';
    case 3:
      return 'März';
    case 4:
      return 'April';
    case 5:
      return 'Mai';
    case 6:
      return 'Juni';
    case 7:
      return 'Juli';
    case 8:
      return 'August';
    case 9:
      return 'September';
    case 10:
      return 'Oktober';
    case 11:
      return 'November';
    case 12:
      return 'Dezember';
    default:
      return '';
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


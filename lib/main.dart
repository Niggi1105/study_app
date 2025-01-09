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
        centerTitle: true,
        title: const Text('Study-App'),
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        width: 300,
        child: DrawerPage(),
      ),

      //basic navigation bar at the bottom of the sacffold
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color.fromARGB(255, 0, 34, 61),
        selectedItemColor: const Color.fromARGB(255, 0, 34, 61),
        selectedFontSize: 15,
        unselectedFontSize: 15,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dash',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Musik',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Stundenplan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'todo',
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            //background color of the dashboard
            color: const Color.fromARGB(255, 0, 34, 61),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              verticalDirection: VerticalDirection.down,
              spacing: 14,
              children: [
                Notification(),
                Date(),
                ExternLinks(),
                MensaInfo(),
                TimeTable(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

/// A simple Drawer for settings and profile mangaement
class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MenuItemButton(
            onPressed: () {},
            child: Row(
              children: [
                Text('Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(180.0, 0, 0, 0),
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.black,
                  ),
                ),
              ],
            )),
        MenuItemButton(
            onPressed: () {},
            child: Row(
              children: [
                Text('Settings',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
                Padding(
                  //the font size is 15 and Settings has 1 more character than Profile so the padding is 180-15
                  padding: const EdgeInsets.fromLTRB(165.0, 0, 0, 0),
                  child: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                ),
              ],
            )),
      ],
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
          height: 125,
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
      children: [OpalLink(), SelmaLink(), MatrixLink(), MailLink()],
    );
  }
}

class OpalLink extends StatelessWidget {
  const OpalLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          onPressed: () {}, //TODO: Add link to Opal
          backgroundColor: Colors.lightBlue,
          child: Icon(
            Icons.attach_file,
            color: Colors.white,
          ),
        ),
        Text('Opal', style: TextStyle(color: Colors.white, fontSize: 15)),
      ],
    );
  }
}

class SelmaLink extends StatelessWidget {
  const SelmaLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          onPressed: () {}, //TODO: Add link to Selma
          backgroundColor: const Color.fromARGB(255, 255, 136, 0),
          child: Icon(
            Icons.folder,
            color: Colors.white,
          ),
        ),
        Text('Selma', style: TextStyle(color: Colors.white, fontSize: 15)),
      ],
    );
  }
}

class MatrixLink extends StatelessWidget {
  const MatrixLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          onPressed: () {}, //TODO: Add link to Matrix Chat
          backgroundColor: const Color.fromARGB(255, 0, 156, 117),
          child: Icon(
            Icons.chat_bubble,
            color: Colors.white,
          ),
        ),
        Text('Matrix', style: TextStyle(color: Colors.white, fontSize: 15)),
      ],
    );
  }
}

class MailLink extends StatelessWidget {
  const MailLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          onPressed: () {}, //TODO: Add link to Mail
          backgroundColor: const Color.fromARGB(255, 255, 41, 173),
          child: Icon(
            Icons.mail,
            color: Colors.white,
          ),
        ),
        Text('Mail', style: TextStyle(color: Colors.white, fontSize: 15)),
      ],
    );
  }
}

//TODO: add color sheme abstraction to make colors more consistent
class MensaInfo extends StatelessWidget {
  const MensaInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: const Color.fromARGB(255, 233, 233, 255),
      ),
      child: Column(
        children: [
          Row(
            spacing: 10,
            children: [
              Icon(
                Icons.local_cafe,
                color: const Color.fromARGB(255, 0, 34, 61),
              ),
              Text(
                'Mensa',
                style: TextStyle(
                    color: const Color.fromARGB(255, 0, 34, 61), fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(210, 0, 0, 0),
                child: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: const Color.fromARGB(255, 0, 34, 61),
                  ),
                  onPressed: () {}, //T
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Row(
                      spacing: 4,
                      children: [
                        Text(
                          'Wann?',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 34, 61)),
                        ),
                        Text(
                          '4.DS',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 0, 34, 61),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 4,
                      children: [
                        Text(
                          'Wo?',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 34, 61)),
                        ),
                        Text(
                          'Alte Mensa',
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 0, 34, 61),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {}, //TODO: Add link to Mensa
                      style: ButtonStyle(
                          fixedSize:
                              WidgetStateProperty.all<Size>(Size(160, 30)),
                          backgroundColor: WidgetStateProperty.all<Color>(
                              const Color.fromARGB(255, 0, 34, 61))),
                      child: Text(
                        "Zum Angebot",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                  child: Image(
                    image: AssetImage("assets/mensa.jpg"),
                    fit: BoxFit.scaleDown,
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//an abstraction to create Entries in the time table
class TimeSlot extends StatelessWidget {
  Color barcolor;
  IconData icon;
  String time;
  String subject;
  String room;

  TimeSlot(this.barcolor, this.icon, this.time, this.subject, this.room);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
      ),
      child: Column(
        spacing: 10,
        children: [
          Stack(
            children: [
              Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: barcolor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        time,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                subject,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 34, 61), fontSize: 16),
              ),
              Text(
                room,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 34, 61), fontSize: 10),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TimeTable extends StatelessWidget {
  const TimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: const Color.fromARGB(255, 233, 233, 255),
      ),
      child: Column(
        spacing: 10,
        children: [
          Row(
            spacing: 10,
            children: [
              Icon(
                Icons.calendar_month,
                color: const Color.fromARGB(255, 0, 34, 61),
              ),
              Text(
                'Heute',
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 34, 61),
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
                child: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: const Color.fromARGB(255, 0, 34, 61),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              TimeSlot(Color.fromARGB(255, 0, 34, 61), Icons.edit, "7:30", "EMI Ü","APB E040"),
              TimeSlot(Color.fromARGB(255, 128, 128, 128), Icons.sunny, "9:20", "frei",""),
              TimeSlot(Color.fromARGB(255, 0, 34, 61), Icons.book, "11:10", "EMI VL","HSZ 03"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              TimeSlot(Colors.green, Icons.coffee, "13:00", "Mensa",""),
              TimeSlot(Color.fromARGB(255, 0, 34, 61), Icons.edit, "14:50", "AUD Ü","APB E001"),
              TimeSlot(Color.fromARGB(255, 128, 128, 128), Icons.sunny, "9:20", "frei",""),
            ],
          ),
        ],
      ),
    );
  }
}

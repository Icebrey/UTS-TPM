import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'dart:async';

class KalenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String timeZone;

    return Scaffold(
      appBar: AppBar(
        title: Text('Kalender'),
      ),
      body: Column(
        children: [
          SafeArea(
              child: TableCalendar(
            firstDay: DateTime.utc(1, 1, 1),
            lastDay: DateTime.utc(3000, 12, 30),
            focusedDay: DateTime.now(),
          )),
          SimpleClock(),
          ListTile(
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      timeZone = 'WIB';
                    },
                    child: const Text(
                      'WIB',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      timeZone = 'WITA';
                    },
                    child: const Text(
                      'WITA',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      timeZone = 'WIT';
                    },
                    child: const Text(
                      'WIT',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ]),
          )
        ],
      ),
    );

  }
}




class SimpleClock extends StatefulWidget {
  _SimpleClockState createState() => _SimpleClockState();
}

class _SimpleClockState extends State<SimpleClock> {
  late String _now;
  late Timer _everySecond;


  @override
  void initState() {
    super.initState();
    _now = _timeToString(DateTime.now());
    _everySecond = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (!mounted) return;
      setState(() {
        _now = _timeToString(DateTime.now());
      });
    });
  }

  String _timeToString(DateTime now) {
    String timeString =
        "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}";
    return timeString;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          print("Tap");
        },
        child: Container(
          padding: EdgeInsets.all(50),
          child: Text(
            _now,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 40,
              fontFamily: "Helvetica",
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}

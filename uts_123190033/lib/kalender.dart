import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';


class kalenderPage extends StatefulWidget {
  @override
  _kalenderPageState createState() => _kalenderPageState();
}

class _kalenderPageState extends State<kalenderPage> {
  String _currentDate = '';
  String _currentTime = '';
  String _zone = 'WIB';

  @override
  void initState() {
    super.initState();
    _updateTime();
  }

  void _updateTime() {
    var now = DateTime.now().toUtc();
    switch(_zone) {
      case 'WIB':
        now = now.add(Duration(hours: 7));
        break;
      case 'WITA':
        now = now.add(Duration(hours: 8));
        break;
      case 'WIT':
        now = now.add(Duration(hours: 9));

        break;
      default:
        break;
    }
    var formatter = DateFormat('HH:mm:ss');
    setState(() {
      _currentTime = formatter.format(now);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalender'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          SafeArea(
              child: TableCalendar(
            firstDay: DateTime.utc(1, 1, 1),
            lastDay: DateTime.utc(3000, 12, 30),
            focusedDay: DateTime.now(),
            )
          ),
            SizedBox(height: 10),
            Text(
              '$_currentTime',
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _zone = 'WIB';
                    });
                    _updateTime();
                  },
                  child: Text('WIB'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _zone = 'WITA';
                    });
                    _updateTime();
                  },
                  child: Text('WITA'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _zone = 'WIT';
                    });
                    _updateTime();
                  },
                  child: Text('WIT'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
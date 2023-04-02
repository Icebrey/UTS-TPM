import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class KalenderPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalender'),
      ),
      body: SafeArea(
        child: TableCalendar(
          firstDay: DateTime.utc(1, 1, 1),
          lastDay: DateTime.utc(3000, 12, 30),
          focusedDay: DateTime.now(),
        )
      ),
    );
  }
}
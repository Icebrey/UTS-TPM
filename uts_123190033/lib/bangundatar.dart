import 'package:flutter/material.dart';
import 'package:uts_123190033/login.dart';
import 'package:uts_123190033/tabung.dart';
import 'package:uts_123190033/trapesium.dart';

class BangunDatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      appBar: AppBar(
        title: Text('Bangun Datar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TrapesiumPage(),
                  ),
                );
              },
              child: Text('Trapesium'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TabungPage(),
                  ),
                );
              },
              child: Text('Tabung'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => LoginPage(),
            ), 
          (Route<dynamic> route) => false);
      },
        child: Icon(Icons.logout_rounded),
        backgroundColor: Color.fromRGBO(0, 51, 153, 1),
      )
    );
  }
}

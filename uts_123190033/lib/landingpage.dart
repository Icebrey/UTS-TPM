import 'package:flutter/material.dart';
import 'package:uts_123190033/bangundatar.dart';
import 'package:uts_123190033/kalender.dart';
import 'package:uts_123190033/login.dart';
import 'package:uts_123190033/profile.dart';

class LandingPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
        automaticallyImplyLeading: false,
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
                    builder: (context) => BangunDatarPage(),
                  ),
                );
              },
              child: Text('Bangun datar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KalenderPage(),
                  ),
                );
              },
              child: Text('Kalender'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              child: Text('Profile'),
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
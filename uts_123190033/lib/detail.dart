  import 'package:flutter/material.dart';
  import 'package:uts_123190033/login.dart';

  class DetailPage extends StatelessWidget {
    final double coverHeigth = 280;
    final double profileHeigth = 144;

    @override
    Widget build(BuildContext context) {
      
      return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            buildTop(),
            buildContent(),
          ],
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

    Widget buildContent() => Column(
          children: [
            const SizedBox(height: 8),
            Text(
              'Bahreisy Hakim',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              '123190033',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(height: 16),
            buildAbout(),
          ],
        );

    Widget buildAbout() => Container(
      padding: EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 16),
                Text(
                  'Selamat datang di profil saya!\nSaya adalah seorang pemuda yang berasal dari kota Kendal dan lahir pada tanggal 29 Agustus 2001.\n\nSejak kecil, saya  memiliki cita-cita yang besar untuk mencapai finansial freedom. Saya selalu berpikir untuk membangun sebuah bisnis yang dapat memberikan kebebasan finansial dan waktu bagi diri saya dan keluarga',
                  style: TextStyle(
                  fontSize: 16,
                  height: 1.4
                  ),
                ),
        ],
      ),
    );

    Widget buildTop() {
      final bottom = profileHeigth / 2;
      final top = coverHeigth - profileHeigth / 2;

      return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(margin: EdgeInsets.only(bottom: bottom), child: coverImage()),
          Positioned(top: top, child: profileImage())
        ],
      );
    }

    Widget coverImage() => Container(
          child: Image.asset(
            'img/photo.jpg',
            width: double.infinity,
            height: coverHeigth,
            fit: BoxFit.cover,
          ),
        );

    Widget profileImage() => CircleAvatar(
      backgroundColor: Colors.white,
      radius: profileHeigth / 1.8,
      child: CircleAvatar(
          radius: profileHeigth / 2, 
          backgroundImage: AssetImage('img/photo.jpg')),
    );
  }

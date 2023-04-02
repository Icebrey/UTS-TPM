import 'package:flutter/material.dart';
import 'dart:math';

import 'package:uts_123190033/login.dart';

class TabungPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _jarijariController = TextEditingController();
    final _tinggiController = TextEditingController();
    final _phi = 3.14159265359;

    return Scaffold(
      appBar: AppBar(
        title: Text('Tabung'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: _jarijariController,
                    decoration: InputDecoration(
                      labelText: 'Jari-jari',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Jari-jari satu is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _tinggiController,
                    decoration: InputDecoration(
                      labelText: 'Tinggi',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Tinggi  is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        double jarijari = double.parse(_jarijariController.text);
                        double tinggi = double.parse(_tinggiController.text);
                        double keliling = 2 * pi * jarijari;
                        double luas = (2 * pi * jarijari * tinggi) + (2 * pi * (jarijari * jarijari));
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Hasil'),
                            content: Text('Luas permukaan: $luas\nKeliling alas: $keliling'),
                            actions: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    child: Text('Hitung'),
                  ),
                ],
              ),
            ),
          ),
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

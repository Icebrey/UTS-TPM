import 'package:flutter/material.dart';
import 'dart:math';

import 'package:uts_123190033/login.dart';

class TrapesiumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _sisiSatuController = TextEditingController();
    final _sisiDuaController = TextEditingController();
    final _sisiMiringController = TextEditingController();
    final _tinggiController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Trapesium'),
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
                    controller: _sisiSatuController,
                    decoration: InputDecoration(
                      labelText: 'Sisi satu',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Sisi satu is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _sisiDuaController,
                    decoration: InputDecoration(
                      labelText: 'Sisi dua',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Sisi dua is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _sisiMiringController,
                    decoration: InputDecoration(
                      labelText: 'Sisi miring',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Sisi miring is required';
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
                        double sisiSatu = double.parse(_sisiSatuController.text);
                        double sisiDua = double.parse(_sisiDuaController.text);
                        double sisiMiring = double.parse(_sisiMiringController.text);
                        double tinggi = double.parse(_tinggiController.text);
                        double keliling = sisiSatu + sisiDua + sisiMiring*2;
                        double luas = 0.5 * (tinggi * (sisiSatu+sisiDua));
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Hasil'),
                            content: Text('Luas: $luas\nKeliling: $keliling'),
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

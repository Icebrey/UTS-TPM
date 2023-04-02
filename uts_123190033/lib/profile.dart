import 'package:flutter/material.dart';
import 'package:uts_123190033/detail.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Container(
        child: Center(
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Color.fromRGBO(249, 208, 64, 1.0)
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  CircleAvatar(
                    backgroundImage: AssetImage('img/photo.jpg'),
                    radius: 50,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Bahreisy Hakim',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '12390033',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 88,
                    child: ButtonTheme(
                      child: ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            child: const Text('Detail'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(),
                                ),
                              );
                            },
                          )
                        ],
                    ),
                    ),
                  ),
                ],
              ),
              )
            ),
          ),
        ),
      );
  }
}
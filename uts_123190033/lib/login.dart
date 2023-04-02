import 'package:flutter/material.dart';
import 'package:uts_123190033/landingpage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String user = "";
  String pass = "";
  bool isLoginSuccess = true;
  bool passToggle = true;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 50),
                  TextFormField(
                    onChanged: (value) {
                      user = value;
                    },
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value) {
                      pass = value;
                    },
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                String text = "";
                if (user == '123190033' && pass == 'hakim') {
                  setState(() {
                    text = 'Login Success';
                    isLoginSuccess = true;
                  });
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return LandingPage();
                  }));
                } else {
                  setState(() {
                    text = 'Login Failed';
                    isLoginSuccess = false;
                  });
                }
                SnackBar snackBar = SnackBar(content: Text(text));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

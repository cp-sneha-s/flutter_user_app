import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_user_app/DetailScreen.dart';

import 'LoginScreen.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final name = TextEditingController();
  final number = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void dispose() {
    // TODO: implement disposepa
    super.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          TextField(
            keyboardType: TextInputType.name,
            controller: name,
            decoration: InputDecoration(
                labelText: ' Name', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: email,
            decoration: InputDecoration(
                labelText: 'Email', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            keyboardType: TextInputType.phone,
            controller: number,
            decoration: InputDecoration(
                labelText: 'Phone Number', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            obscureText: true,
            controller: password,
            decoration: InputDecoration(
                labelText: 'Password', border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (Context) => DetailScreen(
                      nameHolder: name.text,
                      numberHolder: number.text,
                      emailHolder: email.text,
                      passwordHolder: password.text),
                ),
              );
            },
            child: Text(
              'Register',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

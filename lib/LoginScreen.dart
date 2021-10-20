import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_user_app/DetailScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  String userNumber;
  String userName;
  String userEmail;
  String userPassword;
  SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                    labelText: 'Password', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    preferences = await SharedPreferences.getInstance();
                    setState(() {
                      userNumber = preferences.getString('userNumber');
                      userName = preferences.getString('userName');
                    });

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(
                                  nameHolder: userName,
                                  numberHolder: userNumber,
                                  emailHolder: email.text,
                                  passwordHolder: password.text,
                                )));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

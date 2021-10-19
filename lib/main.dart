import 'dart:ffi';

import 'package:flutter/material.dart';

import 'LoginScreen.dart';
import 'RegistrationScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: Text('User App'),
      ),
      body: SingleChildScrollView(child: RegistrationScreen()),
    ));
  }
}

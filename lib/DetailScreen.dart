import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final nameHolder;
  final numberHolder;
  final emailHolder;
  final passwordHolder;

  const DetailScreen(
      {Key key,
      @required this.nameHolder,
      this.numberHolder,
      this.emailHolder,
      this.passwordHolder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("User Detail"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          textDirection: TextDirection.ltr,
          children: [
            Text(
              nameHolder,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              numberHolder,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              emailHolder,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

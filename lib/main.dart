import 'package:flutter/material.dart';
import 'dart:math';

void main () {
  runApp(
    Balls()
  );
}

class Balls extends StatefulWidget {
  @override
  _BallsState createState() => _BallsState();
}

class _BallsState extends State<Balls> {
  int ballNumber=2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueAccent,
            appBar: AppBar(
              title: Text("Music"),
              backgroundColor: Colors.blueAccent.shade700,
            ),
            body: Center(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      ballNumber = Random().nextInt(5) + 1 ;
                    });
                  },
                  child: Image.asset("images/ball$ballNumber.png")
              ),
            ),
        ),
      ),
    );
  }
}

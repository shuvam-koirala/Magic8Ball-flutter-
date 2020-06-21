import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Ask Me Anything !"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: MagicBall(),
    );
  }
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballnumber = Random().nextInt(4) + 1;
          });
        },
        child: Image.asset("images/ball$ballnumber.png"),
      ),
    );
  }
}

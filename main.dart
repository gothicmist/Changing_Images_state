import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      home : BallPage()
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.alphaBlend(Colors.teal, Colors.blueAccent),
      appBar: AppBar(
        backgroundColor: Color.alphaBlend(Colors.blueAccent, Colors.redAccent),
        title: const Center(
            child: Text(
                "Ask Me Anything"
            ),
          ),
        ),
      body: const Ball(),
      );
    }
  }
class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
      children: <Widget> [
        Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5)+1;
                });
              },
              child: Image.asset("images/ball$ballNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}

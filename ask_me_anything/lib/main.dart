import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.red,
        ),
        body: ball(),
      ),
    ),
  );
}

class ball extends StatefulWidget {
  @override
  State<ball> createState() => ballState();
}

class ballState extends State<ball> {
  int ballNumber = 1;
  int ballNo = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
                    print('I got clicked and gave a random number:$ballNo.');
                    setState(() {
                      ballNumber = Random().nextInt(5) + 1;
                      ballNo = ballNumber - 1;
                    });
                  },
                  child: Image.asset("assets/images/ball$ballNumber.png")),
            ),
          )
        ],
      ),
    );
  }
}

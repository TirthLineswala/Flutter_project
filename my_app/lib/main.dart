import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Colors.red[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://5.imimg.com/data5/SELLER/Default/2021/2/DQ/HJ/KF/3077590/diamond-stone.jpg'),
          ),
        ),
      ),
    ),
  );
}

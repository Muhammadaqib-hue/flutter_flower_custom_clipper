import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_flower_custom_clipper/petal_clipper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: FlowerWidget(),
        ),
      ),
    );
  }
}

class FlowerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        for (int i = 0; i < 8; i++)
          Transform.rotate(
            angle: (i * pi / 4),
            child: ClipPath(
              clipper: PetalClipper(),
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.pink.shade300,
                      Colors.pink.shade100,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                Colors.yellow.shade700,
                Colors.orange.shade400,
              ],
              center: Alignment.center,
              radius: 0.8,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.orange.shade200,
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

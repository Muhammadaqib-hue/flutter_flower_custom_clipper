import 'package:flutter/material.dart';

class PetalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var Size(:width, :height) = size;
    Path path = Path();

    path.moveTo(width / 2, 0);

    path.quadraticBezierTo(
      0,
      height * 0.3,
      width / 2,
      height * 0.6,
    );

    path.quadraticBezierTo(
      width,
      height * 0.3,
      width / 2,
      0,
    );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

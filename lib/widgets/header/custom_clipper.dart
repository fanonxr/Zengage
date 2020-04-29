import 'package:flutter/material.dart';

class CustomBottomLeftTriangleClipper extends CustomClipper<Path> {
  double clipSize = 15.0;

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(clipSize, size.height);
    path.lineTo(0.0, clipSize);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomTopBottomRightTriangleClipper extends CustomClipper<Path> {
  double clipSize = 55.0;

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, clipSize);
    path.lineTo(size.width, size.height - clipSize);
    path.lineTo(0.0, size.height);
    path.lineTo(0.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

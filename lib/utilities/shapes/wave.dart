import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    const curveHeight = 30.0;
    final curveWidth = size.width / 4;
    path.lineTo(0, size.height - curveHeight);
    path.quadraticBezierTo(
        curveWidth, size.height, size.width / 2, size.height - curveHeight);
    path.quadraticBezierTo(size.width - curveWidth,
        size.height - 2 * curveHeight, size.width, size.height - curveHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(WaveClipper oldClipper) => false;
}

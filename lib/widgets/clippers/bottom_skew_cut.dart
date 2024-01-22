import 'package:flutter/material.dart';

class BottomSkewCut extends CustomClipper<Path> {
  final double clipheight;

  BottomSkewCut({required this.clipheight});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - clipheight);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(BottomSkewCut oldClipper) => false;
}
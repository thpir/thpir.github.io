import 'package:flutter/material.dart';

class TopBottomSkewCut extends CustomClipper<Path> {
  final double clipheight;

  TopBottomSkewCut({required this.clipheight});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, clipheight);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - clipheight);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TopBottomSkewCut oldClipper) => false;
}
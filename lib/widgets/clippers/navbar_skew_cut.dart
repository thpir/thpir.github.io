import 'package:flutter/material.dart';

class NavBarSkewCut extends CustomClipper<Path> {
  final double clipheight;

  NavBarSkewCut({required this.clipheight});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, clipheight);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(NavBarSkewCut oldClipper) => false;
}
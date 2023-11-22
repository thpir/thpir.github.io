import 'package:flutter/material.dart';
import 'package:portfolio/global_variables.dart';

class BottomNavigationExtension extends StatelessWidget {
  const BottomNavigationExtension({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: ClipPath(
        clipper: _Triangle(),
        child: Container(
          color: primaryColor,
          width: double.infinity,
          height: 25,
        ),
      ),
    );
  }
}

class _Triangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

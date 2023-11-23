import 'package:flutter/material.dart';

class ScreenAnimation extends StatefulWidget {
  final Widget screen;
  const ScreenAnimation({required this.screen, super.key});

  @override
  State<ScreenAnimation> createState() => _ScreenAnimationState();
}

class _ScreenAnimationState extends State<ScreenAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    // Define the Tween for the animation
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0), // Start from the bottom
      end: Offset.zero, // End at the top
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    ));

    // Start the animation when initState is called
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: widget.screen,
    );
  }
}

import 'package:flutter/material.dart';

class RotatingIcon extends StatefulWidget {
  final Widget child;
  const RotatingIcon({required this.child, super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RotatingIconState createState() => _RotatingIconState();
}

class _RotatingIconState extends State<RotatingIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1,
      ),
    );
    _controller.forward(
      from: 0.25,
    ); // we start the animation to be half rotation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 0.5).animate(_controller),
      child: widget.child,
    );
  }
}

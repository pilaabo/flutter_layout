import 'dart:math';

import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.green,
      ),
      foregroundDecoration: const BoxDecoration(
        backgroundBlendMode: BlendMode.colorBurn,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.red,
            Colors.blue,
          ],
        ),
      ),
      padding: const EdgeInsets.all(40.0),
      child: Transform.rotate(
        angle: 180 / pi,
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.purple,
            boxShadow: [
              BoxShadow(
                spreadRadius: 4,
                color: Colors.black.withAlpha(150),
                blurRadius: 15,
                offset: Offset.fromDirection(1.0, 30),
              ),
            ],
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          padding: const EdgeInsets.all(40.0),
          child: _buildShinyCircle(),
        ),
      ),
    );
  }

  Widget _buildShinyCircle() {
    return Container(
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [
              Colors.white,
              Colors.yellow,
              Colors.orange,
            ],
            center: Alignment(-0.3, -0.5),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
            ),
          ]),
    );
  }
}

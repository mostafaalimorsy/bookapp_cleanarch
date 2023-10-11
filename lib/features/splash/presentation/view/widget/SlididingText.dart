// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnimationText extends StatelessWidget {
  const AnimationText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            "Read Free Books",
            textAlign: TextAlign.center,
          ),
        );
      },
      animation: slidingAnimation,
    );
  }
}

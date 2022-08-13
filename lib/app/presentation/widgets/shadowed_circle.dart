import 'dart:math';

import 'package:danilloism/assets.dart';
import 'package:flutter/material.dart';

class ShadowedCircle extends StatelessWidget {
  const ShadowedCircle({super.key, required this.height, required this.width});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final rand = Random();
    final index = rand.nextInt(2);

    return SizedBox(
      height: height,
      width: width,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.list[index])),
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
              color: Color(0xff2f394b),
              blurRadius: 5,
              spreadRadius: 0.05,
              offset: Offset(-1, 3),
            ),
          ],
        ),
      ),
    );
  }
}

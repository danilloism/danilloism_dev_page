import 'package:danilloism/colors.dart';
import 'package:danilloism/helpers.dart';
import 'package:danilloism/shadowed_circle.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mobile = isMobile(context);

    return ColoredBox(
      color: lightGreen,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ShadowedCircle(
                height: mobile ? 200 : 250, width: mobile ? 200 : 250),
          ),
        ],
      ),
    );
  }
}

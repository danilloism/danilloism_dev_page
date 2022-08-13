import 'package:danilloism/app/presentation/widgets/info.dart';
import 'package:danilloism/app/presentation/widgets/shadowed_circle.dart';
import 'package:danilloism/colors.dart';
import 'package:danilloism/helpers.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mobile = isMobile(context);

    return ColoredBox(
      color: lightGreen,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80),
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: ShadowedCircle(height: 200, width: 200),
            ),
            Info(
              title: 'Danillo Ilggner',
              type: InfoType.main,
              child: Text('Computer Science Student'),
            ),
            SizedBox(height: 80),
            Info(
              title: 'ABOUT',
              type: InfoType.other,
              child: Text(
                  'Computer Science student at Pontifical Catholic University of Goias and mobile development enthusiast. Lives in Goiania, Brazil and is very passionate about learning experiences.'),
            ),
          ],
        ),
      ),
    );
  }
}

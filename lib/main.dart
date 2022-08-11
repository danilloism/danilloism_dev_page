import 'package:danilloism/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seo_renderer/seo_renderer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RobotDetector(
      child: ProviderScope(
        child: MaterialApp(
          navigatorObservers: [seoRouteObserver],
          title: 'Danillo Ilggner\'s WebPage',
          home: const HomePage(),
        ),
      ),
    );
  }
}

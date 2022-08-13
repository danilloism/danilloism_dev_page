import 'package:danilloism/app/presentation/pages/home_page.dart';
import 'package:danilloism/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seo_renderer/seo_renderer.dart';

void main() {
  runApp(const RobotDetector(child: ProviderScope(child: MyApp())));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      navigatorObservers: [seoRouteObserver],
      title: 'Danillo Ilggner\'s WebPage',
      home: const Scrollbar(child: HomePage()),
      builder: (context, child) {
        return Stack(
          children: [
            child!,
            Visibility(
              visible: verticalMenuIsPossible(ref, context),
              child: Positioned(
                top: 72,
                child: Container(
                  color: appBarColor,
                  height: 175,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: menuItems,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

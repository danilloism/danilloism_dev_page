import 'package:danilloism/home_page.dart';
import 'package:danilloism/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:url_launcher/url_launcher.dart';

bool isMobile(BuildContext context) => MediaQuery.of(context).size.width <= 600;

Future<void> launchLink(String url) async {
  final uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    throw Exception('Não foi possível abrir a url.');
  }
}

const appBarColor = Color(0xff2c3e50);

final showVerticalMenuProvider = StateProvider<bool>((ref) => false);

final verticalMenuNotifierProvider =
    StateNotifierProvider<VerticalMenuNotifier, bool>(
        (ref) => VerticalMenuNotifier());

final menuItems = [
  LinkRenderer(
    text: 'ABOUT',
    href: 'localhost',
    child: TextWithPadding(
      'ABOUT',
      onPressed: () => launchLink('https://github.com'),
    ),
  ),
  LinkRenderer(
    text: 'STACK',
    href: 'localhost',
    child: TextWithPadding(
      'STACK',
      onPressed: () => launchLink('https://github.com'),
    ),
  ),
  LinkRenderer(
    text: 'RESUME',
    href: 'localhost',
    child: TextWithPadding(
      'RESUME',
      onPressed: () => launchLink('https://github.com'),
    ),
  ),
  LinkRenderer(
    text: 'CONTACT',
    href: 'localhost',
    child: TextWithPadding(
      'CONTACT',
      onPressed: () => launchLink('https://github.com'),
    ),
  ),
];

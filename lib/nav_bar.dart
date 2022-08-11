import 'package:danilloism/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      isMobile(context) ? const _VerticalNavBar() : const _HorizontalNavBar();
}

class _HorizontalNavBar extends StatelessWidget {
  const _HorizontalNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: menuItems);
  }
}

class _VerticalNavBar extends ConsumerWidget {
  const _VerticalNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          ref.read(verticalMenuNotifierProvider.notifier).switchValue();
        },
        child: const Icon(Icons.menu),
      ),
    );
  }
}

class VerticalMenuNotifier extends StateNotifier<bool> {
  VerticalMenuNotifier() : super(false);

  void switchValue() => state = !state;
  bool get visible => state;
}

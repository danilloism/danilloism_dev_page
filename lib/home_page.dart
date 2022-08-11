import 'package:danilloism/about_me.dart';
import 'package:danilloism/helpers.dart';
import 'package:danilloism/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  bool verticalMenuIsPossible(WidgetRef ref, BuildContext context) =>
      ref.watch(verticalMenuNotifierProvider) && isMobile(context);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white70,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            toolbarHeight: 72,
            expandedHeight: isMobile(context) ? 0 : screen.height / 8,
            backgroundColor: appBarColor,
            floating: false,
            pinned: true,
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_drop_up)),
            actions: const [NavBar()],
            bottom: verticalMenuIsPossible(ref, context)
                ? AppBar(
                    title: Column(children: menuItems),
                    toolbarHeight: screen.height / 4,
                  )
                : null,
          ),
          const SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                AboutMe(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextWithPadding extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;
  final void Function()? onPressed;

  const TextWithPadding(
    this.text, {
    Key? key,
    this.padding = const EdgeInsets.all(12),
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed ?? () {},
      child: Padding(
        padding: padding,
        child: Text(
          text,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

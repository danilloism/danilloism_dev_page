import 'package:danilloism/helpers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget appBarTitle(BuildContext context) {
    if (!isMobile(context)) {
      return Row(
        children: const [
          TextWithPadding('ABOUT'),
          TextWithPadding('STACK'),
          TextWithPadding('RESUME'),
          TextWithPadding('CONTACT'),
        ],
      );
    }

    return ElevatedButton(
      onPressed: () {},
      child: const Icon(Icons.menu),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white70,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            toolbarHeight: 72,
            expandedHeight: isMobile(context) ? 0 : screen.height / 8,
            backgroundColor: const Color(0xff2c3e50),
            floating: false,
            pinned: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_drop_up)),
                appBarTitle(context),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                padding: const EdgeInsets.all(10),
                height: 400,
                color: Colors.transparent,
              );
            }, childCount: 5),
          ),
        ],
      ),
    );
  }
}

class TextWithPadding extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;

  const TextWithPadding(
    this.text, {
    Key? key,
    this.padding = const EdgeInsets.all(12),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(text),
    );
  }
}

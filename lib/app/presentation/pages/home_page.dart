import 'package:danilloism/app/presentation/sections/about_me.dart';
import 'package:danilloism/app/presentation/widgets/nav_bar.dart';
import 'package:danilloism/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 72,
        backgroundColor: appBarColor,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_drop_up)),
        actions: const [NavBar()],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [AboutMe()],
        ),
      ),
    );
  }
}

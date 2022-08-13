import 'package:flutter/material.dart';

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

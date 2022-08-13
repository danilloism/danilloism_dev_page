import 'package:danilloism/app/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/seo_renderer.dart';

enum InfoType { main, other }

class Info extends StatelessWidget {
  final String title;
  final Widget child;
  final InfoType type;

  const Info({
    Key? key,
    required this.title,
    required this.child,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dividerIndent = context.screenSize.width / 2.7;

    return Column(
      children: [
        TextRenderer(
          style: type == InfoType.main
              ? TextRendererStyle.header1
              : TextRendererStyle.header2,
          child: Text(
            title,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: type == InfoType.main ? 50 : 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Divider(
          color: Colors.white,
          thickness: 4.5,
          indent: dividerIndent,
          endIndent: dividerIndent,
          height: 70,
        ),
        child.runtimeType == Text
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextRenderer(
                  style: TextRendererStyle.paragraph,
                  child: Text(
                    (child as Text).data!,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: type == InfoType.main ? 25 : 18,
                      fontWeight:
                          type == InfoType.main ? FontWeight.bold : null,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : child,
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_buddy/features/asma_ul_husna/name_of_allah.dart';

class NameView extends StatelessWidget {
  const NameView(
      {Key? key, required this.name, this.onNameTap, this.showArabic = true})
      : super(key: key);

  final NameOfAllah name;
  final bool showArabic;
  final VoidCallback? onNameTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: onNameTap,
                child: Text(
                  showArabic ? name.arabic : name.transliteration,
                  style: showArabic
                      ? GoogleFonts.notoSansArabic(
                          fontSize: constraints.maxWidth / 8,
                          color: Colors.white)
                      : GoogleFonts.montserrat(
                          fontSize: constraints.maxWidth / 8,
                          color: Colors.white,
                        ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                name.meaning,
                style: GoogleFonts.montserrat(
                    fontSize: constraints.maxWidth / 14, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }
}

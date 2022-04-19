import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Let's Start!",
            style: TextStyle(
              fontFamily: GoogleFonts.secularOne().fontFamily,
              fontSize: 45,
              fontWeight: FontWeight.w800,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "More than 200 lessons on different \ntopics are available for you!",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontFamily: GoogleFonts.secularOne().fontFamily,
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w100,
                    fontSize: 20,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

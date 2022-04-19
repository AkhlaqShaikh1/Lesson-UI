import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({
    Key? key,
    required this.lessons,
    required this.image,
    required this.text,
    required this.price,
    required this.color,
    this.tRight = 15,
    this.tLeft = 15,
    this.bRight = 15,
    this.bLeft = 15,
  }) : super(key: key);
  final String image, text, price, lessons;
  final Color color;
  final double tRight, tLeft, bRight, bLeft;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
      margin: const EdgeInsets.only(right: 10),
      width: 170,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(tLeft),
          topRight: Radius.circular(tRight),
          bottomLeft: Radius.circular(bLeft),
          bottomRight: Radius.circular(bRight),
        ),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 15,
            alignment: Alignment.topRight,
            child: Image.asset("assets/icons/heart-yes.png"),
          ),
          Image.asset(
            image,
            height: 70,
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
              fontFamily: GoogleFonts.secularOne().fontFamily,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.3,
              fontSize: 25,
            ),
          ),
          Text(
            lessons,
            style: TextStyle(
              fontFamily: GoogleFonts.secularOne().fontFamily,
              color: Colors.grey[600],
              // fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "\$" + price,
                  style: TextStyle(
                    fontFamily: GoogleFonts.lato().fontFamily,
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    wordSpacing: 0,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Image.asset(
                    "assets/icons/play.png",
                    height: 15,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

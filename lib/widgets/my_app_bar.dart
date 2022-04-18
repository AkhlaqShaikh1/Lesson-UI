import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/icons/menu.png",
            height: 30,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/icons/search.png",
            height: 30,
          ),
        ),
      ],
    );
  }
}
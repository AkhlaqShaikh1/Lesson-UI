import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: Container(
          height: 70,
          // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: const BoxDecoration(color: Colors.black),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/icons/home.png",
                height: 20,
                color: Colors.white,
              ),
              Image.asset(
                "assets/icons/heart-yes.png",
                height: 20,
                color: Colors.grey[400],
              ),
              Image.asset(
                "assets/icons/user-avatar.png",
                height: 20,
                // color: Colors.grey[500],
              ),
            ],
          ),
        ));
  }
}

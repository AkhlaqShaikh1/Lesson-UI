import 'package:flutter/material.dart';

import 'widgets/bottom_nav_bar.dart';
import 'widgets/dog_card.dart';
import 'widgets/heading.dart';
import 'widgets/lesson_card.dart';
import 'widgets/my_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyAppBar(),
              const SizedBox(height: 60),
              const Heading(),
              const SizedBox(height: 40),
              const DogCard(),
              const SizedBox(height: 10),
              buildLessonCard(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  Row buildLessonCard() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        LessonCard(
          image: "assets/icons/ufo.png",
          text: "Shapes",
          lessons: "10 lessons",
          price: "15",
          bRight: 0,
          color: Colors.green[100]!,
        ),
        LessonCard(
          image: "assets/icons/robots-and-humans.png",
          text: "Humans",
          lessons: "8 lessons",
          price: "12",
          tLeft: 0,
          color: Colors.orange[200]!,
          // bRight: 15,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack_prac/widgets/dog_card.dart';

import 'widgets/heading.dart';
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
            children: const [
              MyAppBar(),
              SizedBox(height: 30),
              Heading(),
              SizedBox(height: 30),
              DogCard()
            ],
          ),
        ),
      ),
    );
  }
}

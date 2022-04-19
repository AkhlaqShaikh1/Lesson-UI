import 'package:flutter/material.dart';

class DogCard extends StatelessWidget {
  const DogCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: Colors.pink.shade100,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
      margin: const EdgeInsets.only(right: 10),
      // Text In card
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Animals",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text("6 lessons", style: Theme.of(context).textTheme.subtitle2),
                const SizedBox(height: 10),
                const Text(
                  "For Free!",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 25),
                //Play button
                GestureDetector(
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 25),
                          child: const Text(
                            "Start",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 8),
                          child: Image.asset(
                            "assets/icons/play.png",
                            color: Colors.white,
                            height: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                "assets/icons/heart-yes.png",
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, right: 30),
                height: 100,
                child: Image.asset(
                  "assets/icons/dog.png",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

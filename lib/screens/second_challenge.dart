import 'package:flutter/material.dart';

class SecondChallenge extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final Color thirdColor;

  const SecondChallenge(
      {Key? key,
      required this.firstColor,
      required this.secondColor,
      required this.thirdColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double height = 140;
    const double width = 100;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            color: firstColor,
            height: height,
            width: width,
          ),
          Container(
            color: secondColor,
            height: height,
            width: width,
          ),
          Container(
            color: thirdColor,
            height: height,
            width: width,
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}

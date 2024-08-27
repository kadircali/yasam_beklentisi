import 'package:flutter/material.dart';

import 'constants.dart';

class CardTest extends StatelessWidget {
  final IconData iconTest;
  String cinsiyet;

  CardTest({super.key, required this.iconTest, required this.cinsiyet});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconTest,
          size: 40,
          color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          cinsiyet,
          style: textStyleTest2,
        )
      ],
    );
  }
}

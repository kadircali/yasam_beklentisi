import 'package:flutter/material.dart';

import 'constants.dart';

class ContainerTest extends StatelessWidget {
  final Widget? child;
  final Color? renk;
  ContainerTest({super.key, this.child, this.renk = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Sabit genişlik
      height: 150, // Sabit yükseklik
      child: child,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: renk,
      ),
    );
    ;
  }
}

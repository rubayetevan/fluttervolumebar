library volumebar;

import 'package:flutter/material.dart';

class VolumeBar extends StatelessWidget {
  final double score;
  final double numberOfBars;
  final Color progressColor;
  final Color backgroundColor;

  VolumeBar(this.score, this.numberOfBars,
      {this.progressColor, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    final greenContainer = Container(
      margin: EdgeInsets.only(right: 2),
      height: 14,
      width: 4,
      color: progressColor == null ? Colors.green : progressColor,
    );

    final ashContainer = Container(
      margin: EdgeInsets.only(right: 2),
      height: 14,
      width: 4,
      color: backgroundColor == null ? Color(0xffBEBEBE) : backgroundColor,
    );

    final List<Widget> bars = List<Widget>();
    final double divider = (100.00 / numberOfBars);

    final double numberOfGreenBar = (score / divider);

    for (int i = 0; i < numberOfBars; i++) {
      if (i < numberOfGreenBar) {
        bars.add(greenContainer);
      } else {
        bars.add(ashContainer);
      }
    }
    return Row(
      children: bars,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rosss/widgets/iland.dart';
import 'package:rosss/widgets/backgroundImage.dart';
import 'package:rosss/widgets/heart.dart';

class PositionedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: <Widget>[
        BackgroundImage(),
        Positioned(
          top: 500,
          child: AboutIsland(),
        ),
        Positioned(
          right: 50,
          top: 500,
          child: HeartIcon(),
        ),
      ],
    );
  }
}
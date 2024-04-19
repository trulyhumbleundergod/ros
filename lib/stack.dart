import 'package:flutter/material.dart';
import 'package:rosss/widgets/backgroundimage.dart';
import 'package:rosss/widgets/heart.dart';
import 'package:rosss/widgets/iland.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        BackgroundImage(),
        AboutIsland(),
        HeartIcon(),
      ],
    );
  }
}

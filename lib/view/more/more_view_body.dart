import 'package:flutter/material.dart';
import 'package:quran_project/animation/fade_animation.dart';

import '../home/custom_home_card_widget.dart';

class MoreViewBody extends StatelessWidget {
  const MoreViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Center(
        child: Wrap(
          children: const [
FadeAnimation(
    0.2,
    child: CustomHomeCardWidget(index: 0)),
FadeAnimation(
    0.4,
    child: CustomHomeCardWidget(index: 1)),
            FadeAnimation(
                0.6,
                child: CustomHomeCardWidget(index: 2)),
            FadeAnimation(
                0.8,
                child: CustomHomeCardWidget(index: 3)),
            FadeAnimation(
                1,
                child: CustomHomeCardWidget(index: 4)),
            FadeAnimation(
               1.2,
                child: CustomHomeCardWidget(index: 5)),
            FadeAnimation(
                1.4,
                child: CustomHomeCardWidget(index: 6)),
            FadeAnimation(
               1.6 ,
                child: CustomHomeCardWidget(index: 7)),
            FadeAnimation(
                1.8,
                child: CustomHomeCardWidget(index: 8)),
            FadeAnimation(
                2,
                child: CustomHomeCardWidget(index: 9)),
            FadeAnimation(
                2.2,
                child: CustomHomeCardWidget(index: 10)),

          ],
        ),
      ),
    );
  }
}

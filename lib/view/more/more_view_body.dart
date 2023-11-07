import 'package:flutter/material.dart';
import 'package:quran_project/animation/fade_animation.dart';

import '../home/custom_home_card_widget.dart';

class MoreViewBody extends StatelessWidget {
  const MoreViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Center(
        child: Wrap(
          children: [
            CustomHomeCardWidget(index: 0),
            CustomHomeCardWidget(index: 1),
            CustomHomeCardWidget(index: 2),
            CustomHomeCardWidget(index: 3),
            CustomHomeCardWidget(index: 4),
            CustomHomeCardWidget(index: 5),
            CustomHomeCardWidget(index: 6),
            CustomHomeCardWidget(index: 7),
            CustomHomeCardWidget(index: 8),
            CustomHomeCardWidget(index: 9),
            CustomHomeCardWidget(index: 10),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../constant/images_constant.dart';
import '../../constant/size_constant.dart';
import '../azkar/azkar_name_widget.dart';
import '../home/custom_home_card_widget.dart';

class MoreViewBody extends StatelessWidget {
  const MoreViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Wrap(
            children: const [
CustomHomeCardWidget(index: 0),
CustomHomeCardWidget(index: 1),
CustomHomeCardWidget(index: 2),
CustomHomeCardWidget(index: 3),
CustomHomeCardWidget(index: 4),
CustomHomeCardWidget(index: 5),
CustomHomeCardWidget(index: 6),
CustomHomeCardWidget(index: 7),
CustomHomeCardWidget(index: 6),
CustomHomeCardWidget(index: 6),
CustomHomeCardWidget(index: 8),
CustomHomeCardWidget(index: 8),
CustomHomeCardWidget(index: 8),
CustomHomeCardWidget(index: 8),
CustomHomeCardWidget(index: 8),
            ],
          ),
        ),
      ),
    );
  }
}

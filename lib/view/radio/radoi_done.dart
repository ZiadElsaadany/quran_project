import 'package:flutter/material.dart';
import '../../animation/fade_animation.dart';
import '../../constant/images_constant.dart';
import '../../constant/size_constant.dart';

class RadioHasDataView extends StatelessWidget {
  const RadioHasDataView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  FadeAnimation(
        1,
        child: Image.asset(ImageConstant.radioImage,
          width: MediaQuery.of(context).size.width,
        ));
  }
}


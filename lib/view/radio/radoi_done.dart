import 'package:flutter/material.dart';
import '../../constant/images_constant.dart';

class RadioHasDataView extends StatelessWidget {
  const RadioHasDataView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Image.asset(ImageConstant.radioImage,
      width: MediaQuery.of(context).size.width,
    );
  }
}


import 'package:flutter/material.dart';

import '../../constant/color_constant.dart';

class CustomElevatedButtonOfSebha extends StatelessWidget {
  const CustomElevatedButtonOfSebha({Key? key, this.onPressed, required this.widget, required this.horizontal, required this.vertical, required this.borderRadius}) : super(key: key);
  final void Function()? onPressed;
  final Widget widget;
  final double horizontal ;
  final double vertical ;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width*horizontal,
            vertical: MediaQuery.of(context).size.height*vertical,

          ),

          ),
          backgroundColor: MaterialStateProperty.all(AppColorsConstant.primaryColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(borderRadius))
          )),
      onPressed:onPressed ,
      child:widget,
    );
  }
}



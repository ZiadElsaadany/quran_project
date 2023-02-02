import 'package:flutter/material.dart';

import '../../../constant/color_constant.dart';
import '../../../constant/images_constant.dart';

class CustomElevatedButtonOfSebha extends StatelessWidget {
  const CustomElevatedButtonOfSebha({Key? key, this.onPressed}) : super(key: key);
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width*0.35,
            vertical: MediaQuery.of(context).size.height*0.012,

          ),

          ),
          backgroundColor: MaterialStateProperty.all(AppColorsConstant.primaryColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(20))
          )),
      onPressed:onPressed ,
      child: Image.asset(ImageConstant.fingerImage,
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height*0.06 ,
        width: MediaQuery.of(context).size.width*0.06,
      ),
    );
  }
}



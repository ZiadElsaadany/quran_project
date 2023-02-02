import 'package:flutter/material.dart';

import '../../../constant/color_constant.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({Key? key, required this.icon, this.onPressed}) : super(key: key);
  final IconData icon ;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColorsConstant.grey.withOpacity(0.5),
      child:  GestureDetector(
          onTap:  onPressed ,
          child: Icon(icon,color: AppColorsConstant.primaryColor,)),

    );
  }
}


import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constant/color_constant.dart';
import '../../constant/size_constant.dart';
class AddSebha {
  static showDialogFunction(context, Widget widget) {
    return AwesomeDialog(
      borderSide: const BorderSide(
        color: AppColorsConstant.primaryColor,
      ),
      context: context,
      dialogBorderRadius: BorderRadius.circular(20),
      alignment: Alignment.center,
      headerAnimationLoop: true,
      transitionAnimationDuration: const Duration(milliseconds: 600),
      animType: AnimType.rightSlide,
      dialogType: DialogType.noHeader,
      dialogBackgroundColor: AppColorsConstant.white,
      body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: returnWidthMediaQuery(ctx: context, size: 0.04),
              vertical: returnHeightMediaQuery(ctx: context, size: 0.025)),
          child:  widget),
      // btnOkOnPress: () {},
    ).show();
  }
}

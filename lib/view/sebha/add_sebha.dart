import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/controller/providers/sebha_provider.dart';
import 'package:quran_project/view/sebha/sebha_details/alert_form_new_sebha.dart';
import 'package:quran_project/view/widgets/custom_elevated_button.dart';
import 'package:quran_project/view/widgets/custom_text_field.dart';

import '../../constant/color_constant.dart';
import '../../constant/size_constant.dart';

class AddSebha {
  static showDialogFunction(context) {
    return AwesomeDialog(
      borderSide: const BorderSide(
        color: AppColorsConstant.primaryColor,
      ),
      context: context,
      dialogBorderRadius: BorderRadius.circular(20),
      alignment: Alignment.center,
      headerAnimationLoop: true,
      // autoHide: Duration.zero,
      transitionAnimationDuration: const Duration(milliseconds: 600),
      animType: AnimType.rightSlide,
      dialogType: DialogType.noHeader,
      dialogBackgroundColor: AppColorsConstant.white,
      body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: returnWidthMediaQuery(ctx: context, size: 0.04),
              vertical: returnHeightMediaQuery(ctx: context, size: 0.025)),
          child: const AlertForm()),

      // btnOkOnPress: () {},
    ).show();
  }
}

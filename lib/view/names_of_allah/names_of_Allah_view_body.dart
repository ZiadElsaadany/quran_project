import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:quran_project/constant/names_of_allah_constant.dart';
import 'package:quran_project/constant/size_constant.dart';

import '../../constant/color_constant.dart';
import 'name_allah_widget.dart';

class NamesOfAllahViewBody extends StatelessWidget {
  const NamesOfAllahViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child:GridView.builder(

            itemCount: names.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3 ,
          childAspectRatio: 2.5/3
        ), itemBuilder: (ctx,index)=>  GestureDetector(
            onTap: ( )  {
              showDialogFunction(context, names[index]['name'], names[index]['details ']);
            },
            child: ItemOfAsmaaAllah(name: names[index]['name']))),
      ),
    );
  }
}

showDialogFunction(BuildContext context, String title  , String  desc) {
  return   AwesomeDialog(
      buttonsBorderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide (
          color: AppColorsConstant.primaryColor
      ),
      context: context,
headerAnimationLoop: true,
      title:title,
      // autoHide: Duration.zero,
      transitionAnimationDuration: const Duration(milliseconds: 800),
      animType: AnimType.topSlide,
dialogType: DialogType.noHeader,
      dialogBackgroundColor: AppColorsConstant.primaryColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(
            horizontal: returnWidthMediaQuery(ctx: context, size: 0.02),
        vertical: returnHeightMediaQuery(ctx: context, size: 0.01)
        ),
        child: Text(
           desc ,
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style:TextStyle(
              color: AppColorsConstant.white,
              fontWeight: FontWeight.bold,
              fontSize: returnFontSizeMediaQuery(ctx: context, size: 0.03)
            )
        ),
      ),

      btnCancel: GestureDetector(
        onTap: ( ) {
          Navigator.pop(context);
        },
        child: const Icon( Icons.cancel,
          size: 40,
          color: AppColorsConstant.white,
        ),
      )
    // btnOkOnPress: () {},
  ).show();
}
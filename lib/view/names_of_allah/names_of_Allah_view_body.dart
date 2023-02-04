import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:quran_project/constant/names_of_allah_constant.dart';
import 'package:quran_project/constant/size_constant.dart';
import 'package:quran_project/view/names_of_allah/names_allah_content_view.dart';

import '../../constant/color_constant.dart';
import 'name_allah_widget.dart';

class NamesOfAllahViewBody extends StatelessWidget {
  const NamesOfAllahViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: GridView.builder(
        padding: EdgeInsets.all(returnHeightMediaQuery(ctx: context, size: 0.02)),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.4
        ),
        itemBuilder: (ctx,index){
        return GestureDetector(
            onTap: ( )
            {
              showDialogFunction(context, index);
            },
            child: ItemOfAsmaaAllah(name: names[index]['name']));
      } ,
      itemCount: names.length,
      ),
    ) ;
  }
}
showDialogFunction( context, index) {
  return   AwesomeDialog(
      buttonsBorderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide (
          color: AppColorsConstant.primaryColor
      ),
      context: context,
headerAnimationLoop: true,
      title: names[index]['name'],
      // autoHide: Duration.zero,
      transitionAnimationDuration: Duration(milliseconds: 800),
      animType: AnimType.topSlide,
dialogType: DialogType.noHeader,
      dialogBackgroundColor: AppColorsConstant.primaryColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(
            horizontal: returnWidthMediaQuery(ctx: context, size: 0.02),
        vertical: returnHeightMediaQuery(ctx: context, size: 0.01)
        ),
        child: Text(
            names[index]['details '] ,
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
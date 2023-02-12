import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:quran_project/constant/azkar.dart';
import 'package:quran_project/view/widgets/custom_elevated_button.dart';
import '../../constant/color_constant.dart';
import '../../constant/size_constant.dart';


class AzkarProvider extends ChangeNotifier {
  int counterForCheckIndexOfZekr = 0;
  int finishAllCounter = 0 ;
  int finishForEachZekrCounter= 0;
  restart(){
    counterForCheckIndexOfZekr = 0;
    finishAllCounter = 0;
    finishForEachZekrCounter = 0;
     azkarList =azkarList2;


    notifyListeners();
  }

  clickOnCounter(  {required numOfScreen, required context} ) {

if(counterForCheckIndexOfZekr < azkarList[numOfScreen]['azkar1'].length-1) {
  // 2     3
  if (azkarList[numOfScreen]['azkar1'][counterForCheckIndexOfZekr]['number'] > 1) {
    azkarList[numOfScreen]['azkar1'][counterForCheckIndexOfZekr]['number']-- ;
    finishForEachZekrCounter++;
    notifyListeners();

    // counterForCheckIndexOfZekr = azkarList[numOfScreen]['azkar1'][counterForCheckIndexOfZekr]['total']
  }
  else{
    azkarList[numOfScreen]['azkar1'][counterForCheckIndexOfZekr]['number']-- ;
    finishForEachZekrCounter= 0;
    counterForCheckIndexOfZekr ++ ;
    finishAllCounter++;
    notifyListeners();

  }
}

else {

  AwesomeDialog(
    borderSide: const BorderSide(
      color: AppColorsConstant.primaryColor,
    ),
    context: context,
    dialogBorderRadius: BorderRadius.circular(20),
    alignment: Alignment.center,
    headerAnimationLoop: true,
    transitionAnimationDuration: const Duration(milliseconds: 600),
    animType: AnimType.leftSlide,
    dialogType: DialogType.noHeader,
dismissOnTouchOutside: false,

    dialogBackgroundColor: AppColorsConstant.white,
    body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: returnWidthMediaQuery(ctx: context, size: 0.04),
            vertical: returnHeightMediaQuery(ctx: context, size: 0.025)),
        child:  Column(
          children: [
            Text('مُبَارَك لقد انهيت ${azkarList[numOfScreen]['name']}',
            textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              style:  TextStyle(

                fontWeight: FontWeight.bold,
                fontSize: returnHeightMediaQuery(ctx: context, size: 0.02)
              ),
            ),
            SizedBox(
              height: returnHeightMediaQuery(ctx: context, size: 0.02),
            ),
            CustomElevatedButtonOfSebha(
              onPressed: ( ) {
                restart();
                Navigator.pop(context);
                notifyListeners();
              },
                widget:  Text('اعادة ${azkarList[numOfScreen]['name']} مرة اخرى'),
                horizontal: 0.1, vertical: 0.005,
                borderRadius: 10),

            CustomElevatedButtonOfSebha(
              onPressed: ( ) {
                Navigator.pop(context);
                Navigator.pop(context);
                restart();
                notifyListeners();
              },
                widget:  const Text('الخروج'),
                horizontal: 0.25, vertical: 0.005,
                borderRadius: 10),
          ],
        )
    ),
    // btnOkOnPress: () {},
  ).show();


}
    notifyListeners();

  }

}

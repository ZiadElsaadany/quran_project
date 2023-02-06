import 'package:flutter/material.dart';
import 'package:quran_project/constant/azkar.dart';

class AzkarProvider extends ChangeNotifier {



  int counterForCheckIndexOfZekr = 0;
  int finishAllCounter = 0 ;
  int finishForEachZekrCounter= 0;


  restart( ) {
    counterForCheckIndexOfZekr = 0;
    finishAllCounter =0;
    finishForEachZekrCounter =0;
    notifyListeners();
  }
  clickOnCounter ( {required numOfScreen}) {

    if(finishAllCounter == azkarList[numOfScreen]['azkar1'].length) {
      return;
    }


if(counterForCheckIndexOfZekr < azkarList[numOfScreen]['azkar1'].length-1) {


  // 2     3
  if (azkarList[numOfScreen]['azkar1'][counterForCheckIndexOfZekr]['number'] > 1) {
    azkarList[numOfScreen]['azkar1'][counterForCheckIndexOfZekr]['number']-- ;
    finishForEachZekrCounter++;
    notifyListeners();

    // counterForCheckIndexOfZekr = azkarList[numOfScreen]['azkar1'][counterForCheckIndexOfZekr]['total']
  }
  else{
    finishForEachZekrCounter= 0;
    counterForCheckIndexOfZekr ++ ;
    finishAllCounter++;
    notifyListeners();

  }


}
else {
 finishAllCounter ++;
 finishForEachZekrCounter++;
 notifyListeners();
}
    notifyListeners();

  }

  }

import 'package:flutter/material.dart';

class BottomNavProvider extends ChangeNotifier {

  int currentIndex = 0 ;
  changeIndex(index) {
    currentIndex = index;
    notifyListeners();
  }

}
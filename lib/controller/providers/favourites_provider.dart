import 'package:flutter/material.dart';


class FavouriteProvider extends ChangeNotifier {

  changeIconColor({ bool ? check, Color color = Colors.white}) {
    if (check == true) {
      color = Colors.red;
      notifyListeners();
    }
    notifyListeners();
  }
}
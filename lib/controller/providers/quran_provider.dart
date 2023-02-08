
import 'dart:developer';

import 'package:flutter/material.dart';

import '../../constant/sowar.dart';



class KoranProvider extends ChangeNotifier {
  List<Map<String, dynamic>> lst = [];
  bool search =false;
  Map<String, Map<String, dynamic>> lstSearch = {};

  getNameOfKoran({required String word}) {
    debugPrint('search');
    changeSearchState(state: true);
    lst=[];
    notifyListeners();
    for (int i = 0; i < lstSearch.length; i++) {
      if (lstSearch.keys.toList()[i].contains(word)) {
        lst.add(lstSearch.values.toList()[i]);
        notifyListeners();
      }
    }
    log(lst.toString());
    notifyListeners();
    debugPrint('search done');
  }

  changeSearchState({required bool state}){
    search = state;
    notifyListeners();
  }

  makeList() {
    for (int i = 0; i < Sowar.sowar['sowar']!.length; i++) {
      lstSearch
          .addAll({Sowar.sowar['sowar']![i]['name']: Sowar.sowar['sowar']![i]});
      notifyListeners();
    }
  }



}

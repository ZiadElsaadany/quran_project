import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quran_project/models/doaa_added_model_hive/doaa_added_model_hive.dart';

import '../../constant/hive_const.dart';

class FavouriteProvider extends ChangeNotifier{


  List<DoaaAddedModel> favDoaaList =[ ] ;



   addFavDoaaList( DoaaAddedModel model )  async{
     var   doaaBox = Hive.box<DoaaAddedModel>(HiveConst.favDoaaBox);
     await    doaaBox.add(model);

     notifyListeners()   ;
   }

   fetchAllFavDoaa( ){
     var   doaaBox = Hive.box<DoaaAddedModel>(HiveConst.favDoaaBox);
     favDoaaList  = doaaBox.values.toList();
     notifyListeners();
   }

  bool checkFav  = false;


}
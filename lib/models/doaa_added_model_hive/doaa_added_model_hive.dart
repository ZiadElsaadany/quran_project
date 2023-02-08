

import 'package:hive_flutter/hive_flutter.dart';

part 'doaa_added_model_hive.g.dart';

@HiveType(typeId: 0)
class DoaaAddedModel extends HiveObject{

    @HiveField(0)
   String ? doaaName;
    @HiveField(1)
    String ? doaaContent;

    @HiveField(2)
    bool ? favCheck ;

  DoaaAddedModel
  (
  {
     this.doaaContent,
     this.doaaName,
    this.favCheck=false
  }

  );

}

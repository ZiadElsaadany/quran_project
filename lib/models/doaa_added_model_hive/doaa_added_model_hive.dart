import 'package:hive/hive.dart';


part 'doaa_added_model_hive.g.dart';

@HiveType(typeId: 0)
class DoaaAddedModel extends HiveObject{

    @HiveField(0)
   String ? doaaName;
    @HiveField(1)
    String ? doaaContent;


  DoaaAddedModel
  (
  {
     this.doaaContent,
     this.doaaName
  }

  );

}

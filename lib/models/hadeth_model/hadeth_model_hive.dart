import 'package:hive_flutter/adapters.dart';

part 'hadeth_model_hive.g.dart';
@HiveType(typeId: 1)
class HadethModel extends HiveObject {

  @HiveField(0)
  String?  title ;
  @HiveField(1)
  String?  content ;
  @HiveField(2)

  String?  type ;  // true:favourite     false:not favourite

HadethModel(
  {
    this.content,
    this.title ,
    this.type
}
    );



}
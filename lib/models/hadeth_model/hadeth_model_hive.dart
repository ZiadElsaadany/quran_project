import 'package:hive_flutter/adapters.dart';
import 'package:quran_project/constant/ahadeth_constant.dart';

class HadethModel extends HiveObject {

  String?  title ;
  String?  content ;
  String? start ;

  String? end;
  HadethModel(
  {
    this.content,
    this.title ,
    this.start,
    this.end
}
    );
factory HadethModel.c( {required int index })  {
  return HadethModel(
    content:ahadeth[index]['text'] ,
    title:ahadeth[index]['name'] ,
    end:ahadeth[index]['end'] ,
    start:ahadeth[index]['start']
  );
}



}
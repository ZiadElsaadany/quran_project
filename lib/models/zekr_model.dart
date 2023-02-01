import 'package:quran_project/constant/azkar.dart';

class ZekrModel {
final String title;
final String image;
final List<Map<String,dynamic>> content;

  ZekrModel({required this.title, required this.image,  required this.content});
factory ZekrModel.c(index )  {
  return ZekrModel(
      title: azkarList[index]["name"] ,
      image: azkarList[index]['image'],
      content: azkarList[index]['azkar1']
  ) ;
}
}
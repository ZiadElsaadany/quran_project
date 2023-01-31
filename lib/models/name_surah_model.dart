import '../constant/sowar.dart';

class SurahNameModel{
  final String surahName ;
  final String place;
  final int  num ;
  final int index ;

  SurahNameModel({
    required this.surahName, required this.place, required this.num, required this.index
});
 factory SurahNameModel.cons(index){
    return SurahNameModel(

      index:Sowar.sowar['sowar']![index]['verses'][0]['surah_number'],
      num: Sowar.sowar['sowar']![index]['ayat'],
      place: Sowar.sowar['sowar']![index]['place'],
      surahName: Sowar.sowar['sowar']![index]['name'],
    );
  }

}
class PrayingTimeModel {

  String  ? fajr ;
  String  ? shrook ;
  String  ? dhuhr ;
  String  ? asr ;
  String  ? maghrib ;
  String  ? isha ;
  PrayingTimeModel( {
    required this.asr ,
    required this.dhuhr ,
    required this.fajr ,
    required this.isha ,
    required this.maghrib,
    required this.shrook
});

 factory PrayingTimeModel.frmojson( Map mapFromJaon ) {

 return PrayingTimeModel(
     fajr : mapFromJaon['data']['timings']['Fajr']  ,
     shrook : mapFromJaon['data']['timings']['Sunrise'],
 dhuhr : mapFromJaon['data']['timings']['Dhuhr'] ,
 asr :  mapFromJaon['data']['timings']['Asr'] ,
 maghrib :  mapFromJaon['data']['timings']['Maghrib'],
 isha :  mapFromJaon['data']['timings']['Isha'] ,
 );
 }
}
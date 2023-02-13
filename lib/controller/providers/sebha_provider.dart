import 'package:flutter/material.dart';

class SebhaProvider extends ChangeNotifier{

 String newSebha ='';


  int args = 0 ;
  changeArgs( i ) {
    args = i;
    notifyListeners();
  }

  List<int>  countersOfSebha = [
    0, // 0
    0, // 1
    0, // 2
    0, // 3
    0, // 4
    0, // 5
    0, // 6
    0,  //7


  ];



  int tasabehCounter= 0;
  int indexForTasbehList= 0;

  int afterPrayingCounter = 0 ;



 final List tasbehList= const [
   'سبحان الله',
   'الله أكبر',
   'الحمدلله',
   'لا اله الا الله',
   'لا حول ولا قوة الا بالله',
   'استغفر الله',
 ] ;
 final List afterPrayingList= const [
  'سبحان الله' ,
   'الحمدلله' ,
   'الله اكبر',
   'لا اله الا الله وحده لا شريك له له الملك وله الحمد وهو على كل شئ قدير'
 ] ;


 plusCounterAfterPraying( {required int index}){
   countersOfSebha[index]++;
   notifyListeners();
   if(countersOfSebha[index]%33==0){
     if(afterPrayingCounter<afterPrayingList.length-1) {
       afterPrayingCounter++;
     }
     else{
       afterPrayingCounter=0 ;
     }

     notifyListeners();
   }
   else if(countersOfSebha[index]%100==0){
     afterPrayingCounter= 0;
     countersOfSebha[index]=0;
   }
 }
 plusCounterTasabeh( {required int index}){
   countersOfSebha[index]++;
   notifyListeners();
   if(countersOfSebha[index]%33==0){
     if(tasabehCounter<tasbehList.length-1) {
       tasabehCounter++;
     }
     else{
       tasabehCounter=0 ;
     }
     notifyListeners();
   }
 }



 plusCounter({
    required int index,
}){
   countersOfSebha[index]++;

   notifyListeners();
 }

 restartCounter({required int index}){
   countersOfSebha[index]=0;
   tasabehCounter = 0;
   afterPrayingCounter=0;
   notifyListeners() ;
 }

}
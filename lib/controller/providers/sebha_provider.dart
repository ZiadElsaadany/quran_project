import 'package:flutter/material.dart';

class SebhaProvider extends ChangeNotifier{

 String newSebha ='';


  List<int>  countersOfSebha = [
    0,
    0,
    0,
    0,
    0,
    0
  ];
 plusCounter({
    required int index,
}){
   countersOfSebha[index]++;
   notifyListeners();
 }
 restartCounter({required int index}){
   countersOfSebha[index]=0;
   notifyListeners() ;
 }

}
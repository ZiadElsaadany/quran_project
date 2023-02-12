
import 'dart:convert';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quran_project/models/radio/RadioModel.dart';

class RadioApi extends ChangeNotifier {

  bool playImage = false;

Future <RadioModel>getRadio  ( ) async {
   final  http.Response  res=  await http.get(Uri.parse(
        'https://mp3quran.net/api/v3/radios?language=ar'
    ));
    if(res.statusCode == 200 ) {
     return RadioModel.fromJson(jsonDecode(utf8.decode(res.bodyBytes)));
    }else{
      throw Exception('failed to load radio');
    }

  }


play( String  url, AudioPlayer audioPlayer) async{
  playImage= true ;
  notifyListeners();

  await audioPlayer.play(UrlSource(url));
}
stop (AudioPlayer audioPlayer) async {
  playImage = false;
  notifyListeners();
  await  audioPlayer.pause();
}
}
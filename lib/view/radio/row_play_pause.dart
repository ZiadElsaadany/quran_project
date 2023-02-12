
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/controller/apis/radio.dart';

import '../../constant/color_constant.dart';
import '../../constant/size_constant.dart';
import '../../models/radio/Radios.dart';

class RowIconAndLabelRadio extends StatelessWidget {
  const RowIconAndLabelRadio({Key? key, required this.item, required this.audioPlayer, required this.url}) : super(key: key);
final Radios item;
final AudioPlayer audioPlayer;
final String url ;
@override
  Widget build(BuildContext context) {
    return  Consumer<RadioApi>(
      builder: (context,provider,_) {
        return Padding(
          padding:  EdgeInsets.symmetric(
              horizontal: returnWidthMediaQuery(ctx: context, size: 0.01)),
          child: Column(
            children: [
              Text('${item.name}',
                textAlign: TextAlign.center,
                style:  TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: returnFontSizeMediaQuery(ctx: context, size: 0.025)
                ),
              ),
              SizedBox(height: returnHeightMediaQuery(ctx: context, size: 0.04),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColorsConstant.primaryColor,
                    child: IconButton (
                      onPressed:  () {
                      provider.play(url, audioPlayer);
                      } ,
                      icon: const Icon(Icons.play_arrow, color: Colors.white,)
                      ,
                    ),
                  ),
                  SizedBox(
                    width: returnWidthMediaQuery(ctx: context, size: 0.03
                    ),
                  ),
                  Text( 'تشغيل',
                    style: TextStyle(
                        fontWeight:  FontWeight.bold,
                        fontSize: returnFontSizeMediaQuery(ctx: context, size: 0.028)
                    ),
                  ) ,
                  SizedBox(
                    width: returnWidthMediaQuery(ctx: context, size: 0.1
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: AppColorsConstant.primaryColor,
                    child: IconButton (
                      onPressed:  ( ) {
                       provider.stop(audioPlayer)  ;
                      } ,
                      icon: const Icon(Icons.pause_outlined ,color: Colors.white,)
                      ,
                    ),
                  ),
                  SizedBox(
                    width: returnWidthMediaQuery(ctx: context, size: 0.03
                    ),
                  ),
                  Text( 'ايقاف',    style: TextStyle(
                      fontWeight:  FontWeight.bold,
                      fontSize: returnFontSizeMediaQuery(ctx: context, size: 0.028)
                  ),) ,




                ],
              ),

            ],
          ),
        );
      }
    );
  }
}

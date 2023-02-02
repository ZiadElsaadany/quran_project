import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant/arabic_surah_number.dart';
import '../../../constant/color_constant.dart';
import '../../../constant/sowar.dart';

class KoranWidget extends StatelessWidget {
  const KoranWidget({Key? key,required this.index1,required this.index2}) : super(key: key);
final int index1 ;
final int index2 ;
  @override
  Widget build(BuildContext context) {
    return  Text.rich(

        textDirection: TextDirection.rtl,

        textAlign: TextAlign.center,
        TextSpan(
          children: [
            TextSpan( text: '  ${ Sowar.sowar['sowar']![index1]['verses'][index2]['content']}   ',
              style: const TextStyle(
                fontSize: 24,
                fontFamily: 'quran',
                color: Color.fromARGB(196, 0, 0, 0),
              ),
            ) ,
            WidgetSpan(child: Stack(
              alignment: Alignment.center,
              children: [
                ArabicSurahNumber(i:Sowar.sowar['sowar']![index1]['verses'][index2]['verse_number'] ),
                const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan( text: ' ۝ ', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'quran',
                            color: AppColorsConstant.primaryColor
                        ),) ,

                      ],

                    )


                ),
              ],
            ))

          ],

        )


    ) ;


  }
}

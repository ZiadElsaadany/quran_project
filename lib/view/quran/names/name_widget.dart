import 'package:flutter/material.dart';
import 'package:quran_project/constant/arabic_number_converter.dart';
import 'package:quran_project/models/name_surah_model.dart';

import '../../../constant/arabic_surah_number.dart';
import '../../../constant/color_constant.dart';
import '../../../constant/images_constant.dart';


class SurahNameDisplay extends StatelessWidget {
final SurahNameModel modelOfSurah;

  const SurahNameDisplay({super.key, required this.modelOfSurah});
  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.white.withOpacity(0.6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        //set border radius more than 50% of height and width to make circle
      ),
      elevation: 3,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 5.0, horizontal:
        MediaQuery.of(context).size.height*0.025
        ),
        child: Row(
          children: [
           Stack(
             alignment: Alignment.center,
             children: [
             Image.asset(ImageConstant.itar,
                 height: MediaQuery.of(context).size.height*0.04,
                 color: AppColorsConstant.primaryColor,
             ),

               ArabicSurahNumber(i:modelOfSurah.index ),
             ],
           ),
 const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 5,),
                Text(
                  ' سورة ${modelOfSurah.surahName}',style: TextStyle (

                  color: AppColorsConstant.black,
                  fontSize: MediaQuery.of(context).size.height*0.022,
                  fontWeight: FontWeight.w600,
                ),),
                // SizedBox(height:2,),


                Text( '  آيـــات   ${modelOfSurah.num.toString().toArabicNumbers}   ' ,
textDirection: TextDirection.rtl,
                  style: const TextStyle(
                    color: AppColorsConstant.grey,
                    fontWeight: FontWeight.bold,
                    // fontFamily: 'me_quran.ttf',
                    fontSize: 14


                  ),
                ),
                const SizedBox(height: 5,),

              ],
            ) ,
            const Spacer(flex: 3,),
            Text( modelOfSurah.place , style: const TextStyle(

              color: AppColorsConstant.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 14
            ),),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios ,color: AppColorsConstant.grey,size: 15,)
          ],
        ),
      ),
    );
  }
}

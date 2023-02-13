
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/animation/fade_animation.dart';
import 'package:quran_project/constant/size_constant.dart';

import '../../../constant/color_constant.dart';
import '../../../constant/images_constant.dart';
import '../../../controller/apis/api_salahTiming.dart';



class NewsSalah extends StatelessWidget {
  const NewsSalah({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  FadeAnimation(
      1.5,
      child: Container(
        height: returnHeightMediaQuery(ctx: context, size: 0.18),
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height*0.04,
            bottom: MediaQuery.of(context).size.height*0.015,
            left: MediaQuery.of(context).size.height*0.015,
            right: MediaQuery.of(context).size.height*0.015,
        ),
        padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.03),
        decoration: BoxDecoration(
            color: AppColorsConstant.primaryColor.withOpacity(0.9),
            borderRadius: BorderRadius.circular(10),
            image:  const DecorationImage(
                image: AssetImage(
                  ImageConstant.newsSalahImage,
                ),
              alignment: Alignment.centerLeft
            )
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(ImageConstant.newsSalahIcon,
                    height: returnHeightMediaQuery(ctx: context, size: 0.04),
                    ),
                    const SizedBox(width: 10,),
                     Text('الصلاة التالية   ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: returnFontSizeMediaQuery(ctx: context, size: 0.025) ,
                        fontWeight: FontWeight.bold
                      ),

                    ),
                    Text('( ${Provider.of<PrayingApi>(context,listen: false).getPrayingName()} )',
                      style: const TextStyle(
                          color: AppColorsConstant.yellow,
                          fontSize:15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('${Provider.of<PrayingApi>(context).timeOfSalah}',
                style: const TextStyle(
                  color: AppColorsConstant.white,
                  fontSize:15,
                  fontWeight: FontWeight.bold
                ),
                ),

                const SizedBox(
                  height: 10,
                ),

              ],
            ),
            const Spacer(),

          ],
        ),
      ),
    );
  }
}

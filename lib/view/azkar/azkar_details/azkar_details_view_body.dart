
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/constant/images_constant.dart';
import 'package:quran_project/constant/size_constant.dart';
import 'package:quran_project/controller/providers/azkar_provider.dart';
import 'package:quran_project/view/widgets/custom_elevated_button.dart';

import '../../../constant/azkar.dart';

class AzkarDetailsViewBody extends StatelessWidget {
 final int indexOfZekr ;

  const AzkarDetailsViewBody({super.key, required this.indexOfZekr});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Consumer<AzkarProvider>(
        builder: (context,provider,_ ) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(ImageConstant.itar,
                          height: returnHeightMediaQuery(ctx: context, size: 0.07),
                            width: returnWidthMediaQuery(ctx: context, size: 0.1),

                          ),
                          Text('${  azkarList[indexOfZekr]['azkar1'].length}  '),
                        ],
                      ),
                       Text('عدد الأذكار',
                      style: TextStyle(
                        fontSize: returnHeightMediaQuery(ctx: context, size:0.03)
                      ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(ImageConstant.itar,
                            height: returnHeightMediaQuery(ctx: context, size: 0.07),
                            width: returnWidthMediaQuery(ctx: context, size: 0.1),

                          ),
                          Text('${provider.finishAllCounter}  '),
                        ],
                      ),
                      Text('أنهيت',
                        style: TextStyle(
                            fontSize: returnHeightMediaQuery(ctx: context, size:0.03)
                        ),
                      )
                    ],
                  ),

                ],
              ),

             LinearPercentIndicator(
               width: 376.0,
               lineHeight: 8,
               percent: provider.finishAllCounter/azkarList[indexOfZekr]['azkar1'].length,
               backgroundColor: Colors.grey.withOpacity(0.4),
               progressColor: AppColorsConstant.yellow,

              ),

           Expanded(
             child: ListView(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text( azkarList[indexOfZekr]['azkar1'][provider.counterForCheckIndexOfZekr]['adi1'] ?? '',
                       textAlign: TextAlign.start,
                       style: TextStyle(
                           color: AppColorsConstant.yellow,
                           fontWeight: FontWeight.w700,
                           fontSize: returnFontSizeMediaQuery(ctx: context, size: 0.026)
                       ),

                     ),
                   ],
                 ),
                 Text( azkarList[indexOfZekr]['azkar1'][provider.counterForCheckIndexOfZekr]['adi']??'',

                     style:    TextStyle(
                         color: AppColorsConstant.black,
                         fontWeight: FontWeight.w600,
                         fontSize: returnFontSizeMediaQuery(ctx: context, size: 0.026)
                     )
                 ) ,
                 Text( azkarList[indexOfZekr]['azkar1'][provider.counterForCheckIndexOfZekr]['adi2']??'',
                     textAlign: TextAlign.center,
                     style:    TextStyle(
                         color: AppColorsConstant.grey,
                         fontWeight: FontWeight.w500,
                         fontSize: returnFontSizeMediaQuery(ctx: context, size: 0.022)
                     )
                 ) ,
               ],
             ),
           ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(ImageConstant.itar,
                            height: returnHeightMediaQuery(ctx: context, size: 0.07),
                            width: returnWidthMediaQuery(ctx: context, size: 0.1),

                          ),
                          Text('${ azkarList[indexOfZekr]['azkar1'][provider.counterForCheckIndexOfZekr]['total']}  '),
                        ],
                      ),
                      Text('التكرار',
                        style: TextStyle(
                            fontSize: returnHeightMediaQuery(ctx: context, size:0.03)
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(ImageConstant.itar,
                            height: returnHeightMediaQuery(ctx: context, size: 0.07),
                            width: returnWidthMediaQuery(ctx: context, size: 0.1),

                          ),
                          Text('${provider.finishForEachZekrCounter} '),
                        ],
                      ),
                      Text('أنهيت',
                        style: TextStyle(
                            fontSize: returnHeightMediaQuery(ctx: context, size:0.03)
                        ),
                      )
                    ],
                  ),

                ],
              ),
              LinearPercentIndicator(
                restartAnimation: true,
                width: 376.0,
                lineHeight: 8,
                percent: provider.finishForEachZekrCounter/azkarList[indexOfZekr]['azkar1'][provider.counterForCheckIndexOfZekr]['total'],
                backgroundColor: Colors.grey.withOpacity(0.4),
                progressColor: AppColorsConstant.primaryColor,

              ),


 Row(
   children: [
     Expanded(
           child: CustomElevatedButtonOfSebha(
               widget:  const Text('تكرار',style: TextStyle(color: Colors.white),),
               horizontal: 0.1,
               vertical: 0.01,
               borderRadius: 0,

             onPressed: ( ) {
provider.clickOnCounter(numOfScreen:indexOfZekr);
             },
           ),
     ),
     Container(
           child: IconButton(
             icon: Icon(Icons.restart_alt),
             onPressed: ( ) {
             provider.restart();
             },
           ),
     )

   ],
 ) ,


            ],
          );
        }
      ),
    );
  }

//   = number


}


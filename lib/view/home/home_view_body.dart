import 'package:flutter/material.dart';
import 'package:quran_project/constant/images_constant.dart';
import 'package:quran_project/constant/size_constant.dart';
import 'package:quran_project/view/home/custom_home_card_widget.dart';
import 'package:quran_project/view/home/quran_daily_widget.dart';

import '../../constant/color_constant.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width*0.05 ,
        vertical:  MediaQuery.of(context).size.height*0.00
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height:returnHeightMediaQuery(ctx: context, size: 0.15) ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.date_range,color: AppColorsConstant.grey,),
                      SizedBox(width: 5,),
                      Text('الاربعاء 7 شعبان 1443',
                      textAlign: TextAlign.center,
                      style: TextStyle(
              color: AppColorsConstant.grey,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ],
                  ),
                  Image.asset(ImageConstant.image,
                    height: returnHeightMediaQuery(ctx: context, size: 0.15),
                  ),


                ],
              ),
            ),
            Row(
              children: const [
                Icon(Icons.location_on_outlined),
                Text('مصر طنطا'),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),

            const QuranDailyWidget(),
             SizedBox(height: returnHeightMediaQuery(ctx: context, size: 0.03),),
          Center(
            child: Wrap(
              children: const[
                CustomHomeCardWidget(
                  index: 0,
                ),
                CustomHomeCardWidget(
                  index: 1,
                ),
                CustomHomeCardWidget(
                  index: 2,
                ),
                CustomHomeCardWidget(
                  index: 3,
                ),
                CustomHomeCardWidget(
                  index: 4,
                ),
                CustomHomeCardWidget(
                  index: 5,
                ),
              ],
            ),
          ),
            Center(
              child: Image.asset(ImageConstant.image,
                width:returnWidthMediaQuery(ctx: context, size: 0.28),
                height: returnHeightMediaQuery(ctx: context, size: 0.1),
              ),
            )

          ],
        ),
      );
  }
}


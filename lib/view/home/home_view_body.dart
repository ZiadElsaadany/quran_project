import 'package:flutter/material.dart';
import 'package:quran_project/constant/images_constant.dart';
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
        vertical:  MediaQuery.of(context).size.height*0.03
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height:MediaQuery.of(context).size.height*0.1 ,
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
                    height: MediaQuery.of(context).size.height*0.1,
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
            const SizedBox(height: 15,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.29,
              child: GridView.builder(

                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:3,
                      childAspectRatio: 1.3
                  ),
                  itemCount: 6,
                  itemBuilder: (ctx,index)=> CustomHomeCardWidget(index: index,)
              ),
            ),
            Center(
              child: Image.asset(ImageConstant.image,
                width: MediaQuery.of(context).size.width*0.2,
                height: MediaQuery.of(context).size.height*0.1,
              ),
            )

          ],
        ),
      );
  }
}


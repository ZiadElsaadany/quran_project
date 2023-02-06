import 'package:flutter/material.dart';
import 'package:quran_project/constant/azkar.dart';
import 'package:quran_project/constant/size_constant.dart';

import '../../constant/images_constant.dart';
import 'azkar_name_widget.dart';

class AzkarViewBody extends StatelessWidget {
  const AzkarViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            SizedBox(height: returnHeightMediaQuery(ctx: context, size: 0.04),),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (ctx,index)=>  AzkarNameWidget(index: index,),
                itemCount:azkarList.length,
              ),
            ),
            Center(
              child: Image.asset(ImageConstant.image,
                width: MediaQuery.of(context).size.width*0.2,
                height: MediaQuery.of(context).size.height*0.08,
              ),
            ),
            SizedBox(height: returnHeightMediaQuery(ctx: context, size: 0.04),),
          ],
        ),
      ),
    );
  }
}
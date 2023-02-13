import 'package:flutter/material.dart';
import 'package:quran_project/animation/fade_animation.dart';
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
        child: FadeAnimation(
          1,
          child: Column(
            children: [
              SizedBox(height: returnHeightMediaQuery(ctx: context, size: 0.04),),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (ctx,index)=>
                      index ==azkarList.length-1?
                          Column(
                            children: [
                              AzkarNameWidget(index: index,),
                              Center(
                                child: Image.asset(ImageConstant.image,
                                  height: MediaQuery.of(context).size.height*0.08,
                                ),
                              ),
                            ],
                          )
                          :AzkarNameWidget(index: index,),
                  itemCount:azkarList.length,
                ),
              ),

              SizedBox(height: returnHeightMediaQuery(ctx: context, size: 0.04),),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/arabic_number_converter.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/view/sebha/sebha_details/row_of_update_and_add.dart';

import '../../../constant/images_constant.dart';
import '../../../constant/size_constant.dart';
import '../../../controller/providers/sebha_provider.dart';
import '../../widgets/custom_elevated_button.dart';

class SebhaViewDetailsBody extends StatelessWidget {
  const SebhaViewDetailsBody({Key? key, required this.index}) : super(key: key);
  final int index;


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width*0.03,
          vertical: MediaQuery.of(context).size.height*0.05,

        ),
        child: Consumer<SebhaProvider>(
            builder: (context,provider,_) {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RowOfUpdateAndAdd(index: index),
                    SizedBox(
                      height:  MediaQuery.of(context).size.height*0.06,
                    ),

               index !=5 && index!=4?  Text(
                      index ==0? 'سبحان الله' :
                      index==1? 'الله أكبر' :
                      index==2? 'لا اله الا الله':
                      index==3? 'لا حول ولا قوة الا بالله':
                      index==4? 'بعد الصلاة ' :
                      index == 6? provider.newSebha : ""
                      ,
                      textAlign: TextAlign.center,
                      style:  TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: returnFontSizeMediaQuery(ctx: context, size: 0.042)
                      ),
                    ):
                    RowOfListTasbeh(index: index)
                    ,
                    SizedBox(
                      height:  MediaQuery.of(context).size.height*0.06,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(ImageConstant.outlineOfSebha1,
                          height: MediaQuery.of(context).size.height*0.2,
                        ),
                        Image.asset(ImageConstant.outlineOfSebha2,
                          height: MediaQuery.of(context).size.height*0.18,
                        ),

                        Text(
                          provider.countersOfSebha[index].toArabicNumbers,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColorsConstant.primaryColor,

                              fontSize: MediaQuery.of(context).size.height*0.055
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height:  MediaQuery.of(context).size.height*0.17,
                    ),
                    CustomElevatedButtonOfSebha(
                      horizontal: 0.35,
                      vertical: 0.012,
                      widget:  Image.asset(ImageConstant.fingerImage,
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height*0.06 ,
                        width: MediaQuery.of(context).size.width*0.06,
                      ),
                      onPressed: ( ) {
                        provider.plusCounter(index: index);
                      }, borderRadius: 20 ,
                    ),
                    SizedBox(
                      height:  MediaQuery.of(context).size.height*0.07,
                    ),


                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}
class RowOfListTasbeh extends StatefulWidget {
  const RowOfListTasbeh({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  State<RowOfListTasbeh> createState() => _RowOfListTasbehState();
}

class _RowOfListTasbehState extends State<RowOfListTasbeh> {

  @override
  Widget build(BuildContext context) {
    return   Consumer<SebhaProvider>(
      builder: (context,provider,_ ) {
        return Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: Axis.horizontal,
          children: [
            GestureDetector(
              onTap: ( ) {
             widget.index == 4?
             provider.plusAfterPrayingListCounter() :provider.plusTasabehCounter();
              } ,
              child: const Icon(Icons.arrow_back_ios , color: AppColorsConstant.primaryColor,
              ),
            ),
            SizedBox(width: returnWidthMediaQuery(ctx: context, size: 0.04),),
            Text(
              widget.index == 4?
              provider.afterPrayingList[provider.afterPrayingCounter]: provider.tasbehList[provider.tasabehCounter],
              textAlign: TextAlign.center,
              style:  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: returnFontSizeMediaQuery(ctx: context, size: 0.042)
              ),

            ) ,
            SizedBox(width: returnWidthMediaQuery(ctx: context, size: 0.04),),
            GestureDetector(
              onTap: ( ) {
            widget.index ==4?  provider.minusAfterPrayingList(): provider.minusTasbehCounter()  ;

              },
              child: const Icon(Icons.arrow_back_ios,
                textDirection: TextDirection.ltr,
                color: AppColorsConstant.primaryColor,
              ),
            )


          ],
        );
      }
    );
  }
}

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
    return Padding(
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
                    height:  MediaQuery.of(context).size.height*0.05,
                  ),

             index !=5 &&index!=6?  Text(
                    index ==0? 'سبحان الله وبحمده،\n سبحان الله العظيم' :
                        index==1?  "أستغفر الله وأتوب إليه":
                    index==2? 'الله أكبر' :
                    index==3? 'لا اله الا الله':
                    index==4? 'لا حول ولا قوة الا بالله':
                    index==5? 'بعد الصلاة ' :
                    index == 7? provider.newSebha : ""
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
                        height: MediaQuery.of(context).size.height*0.27,
                      ),
                      Image.asset(ImageConstant.outlineOfSebha2,
                        height: MediaQuery.of(context).size.height*0.25,
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
                    height:  MediaQuery.of(context).size.height*0.1,
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
                    index!=5&&index!=6?  provider.plusCounter(index: index)

                    : index==5? provider.plusCounterAfterPraying(index: index):  // after praying
                        provider.plusCounterTasabeh(index: index); //  tasabeh

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
            const Icon(Icons.arrow_back_ios , color: AppColorsConstant.primaryColor,
            ),
            SizedBox(width: returnWidthMediaQuery(ctx: context, size: 0.04),),
            Text(
              widget.index == 5?
              provider.afterPrayingList[provider.afterPrayingCounter]:
              provider.tasbehList[provider.tasabehCounter],
              textAlign: TextAlign.center,
              style:  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: returnFontSizeMediaQuery(ctx: context, size: 0.042)
              ),

            ) ,



          ],
        );
      }
    );
  }
}

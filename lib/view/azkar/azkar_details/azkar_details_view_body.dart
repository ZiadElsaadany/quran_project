import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/animation/fade_animation.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/constant/size_constant.dart';
import 'package:quran_project/controller/providers/azkar_provider.dart';
import 'package:quran_project/view/azkar/azkar_details/restart_zekr.dart';
import 'package:quran_project/view/widgets/custom_elevated_button.dart';

import '../../../constant/azkar.dart';
import 'custom_linear_percent.dart';
import 'custom_row_counter_zeekr.dart';

class AzkarDetailsViewBody extends StatefulWidget {
  final int indexOfZekr;

  const AzkarDetailsViewBody({super.key, required this.indexOfZekr});

  @override
  State<AzkarDetailsViewBody> createState() => _AzkarDetailsViewBodyState();
}

class _AzkarDetailsViewBodyState extends State<AzkarDetailsViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, ( ) {
      Provider.of<AzkarProvider>(context,listen:false).restart();

    } ); }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: returnWidthMediaQuery(ctx: context, size: 0.05),
        right: returnWidthMediaQuery(ctx: context, size: 0.05),
        top: returnHeightMediaQuery(ctx: context, size: 0.04),
        bottom: returnHeightMediaQuery(ctx: context, size: 0.02),
      ),
      child: Consumer<AzkarProvider>(builder: (context, provider, _) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomRowOfNumberOfZekr(
                    index: azkarList[widget.indexOfZekr]['azkar1'].length,
                    title: "عدد الأذكار",
                  textColor: AppColorsConstant.yellow,
                  imgColor: AppColorsConstant.yellow,),
                CustomRowOfNumberOfZekr(
                    index: provider.finishAllCounter,
                  title: "انهيت",
                  textColor: AppColorsConstant.grey,
                  imgColor: AppColorsConstant.grey,),
              ],
            ),
            SizedBox(
              height: returnHeightMediaQuery(ctx: context, size: 0.007),
            ),
            FadeAnimation(
              1.5,
              child: CustomLinearPercent(
                number1: provider.finishAllCounter,
                number2: azkarList[widget.indexOfZekr]['azkar1'].length,
                color: AppColorsConstant.yellow,
              ),
            ),
            SizedBox(
              height: returnHeightMediaQuery(ctx: context, size: 0.03),
            ),
            Expanded(
              child: FadeAnimation(
                1,
                child: Scrollbar(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Text(
                        azkarList[widget.indexOfZekr]['azkar1']
                                [provider.counterForCheckIndexOfZekr]['adi1'] ??
                            '',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColorsConstant.yellow,
                            fontWeight: FontWeight.w700,
                            fontSize: returnFontSizeMediaQuery(
                                ctx: context, size: 0.026)),
                      ),
                      SizedBox(
                        height: returnHeightMediaQuery(ctx: context, size: 0.01),
                      ),
                      Text(
                          azkarList[widget.indexOfZekr]['azkar1']
                                  [provider.counterForCheckIndexOfZekr]['adi'] ??
                              '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.7),
                              fontSize: returnFontSizeMediaQuery(
                                  ctx: context, size: 0.027))),
                      SizedBox(
                        height: returnHeightMediaQuery(ctx: context, size: 0.02),
                      ),
                      Text(
                          azkarList[widget.indexOfZekr]['azkar1']
                                  [provider.counterForCheckIndexOfZekr]['adi2'] ??
                              '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColorsConstant.black.withOpacity(0.5),
                              fontWeight: FontWeight.w500,
                              fontSize: returnFontSizeMediaQuery(
                                  ctx: context, size: 0.022))),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomRowOfNumberOfZekr(
                    index: azkarList[widget.indexOfZekr]['azkar1']
                        [provider.counterForCheckIndexOfZekr]['total'],
                    title: "التكرار", textColor: AppColorsConstant.primaryColor,
                  imgColor: AppColorsConstant.primaryColor,),
                CustomRowOfNumberOfZekr(
                    index: provider.finishForEachZekrCounter, title: "انهيت",
                  textColor: AppColorsConstant.grey,
                  imgColor: AppColorsConstant.grey,),
              ],
            ),
            SizedBox(
              height: returnHeightMediaQuery(ctx: context, size: 0.005),
            ),

            CustomLinearPercent(
              number1: provider.finishForEachZekrCounter,
              number2: azkarList[widget.indexOfZekr]['azkar1']
                  [provider.counterForCheckIndexOfZekr]['total'],
              color: AppColorsConstant.primaryColor,
            ),
            SizedBox(
              height: returnHeightMediaQuery(ctx: context, size: 0.002),
            ),
            SizedBox(
              width: returnWidthMediaQuery(ctx: context, size: 0.8),
              child: const Divider(
                thickness: 2,
              ),
            ),
            FadeAnimation(
              1.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomElevatedButtonOfSebha(
                      widget: Text(
                        'اضغط للتكرار',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: returnFontSizeMediaQuery(
                                ctx: context, size: 0.025)),
                      ),
                      horizontal: 0.05,
                      vertical: 0.012,
                      borderRadius: 10,
                      onPressed: () {
                        provider.clickOnCounter(numOfScreen: widget.indexOfZekr, context: context);
                      },
                    ),
                  ),
                  SizedBox(width: returnWidthMediaQuery(ctx: context, size: 0.05),),
                  const RestartIcon(),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

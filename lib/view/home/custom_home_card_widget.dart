import 'package:flutter/material.dart';
import 'package:quran_project/constant/size_constant.dart';
import 'package:quran_project/view/ahadeth/ahadeth_view.dart';
import 'package:quran_project/view/doaa/doaa_view.dart';
import 'package:quran_project/view/names_of_allah/names_of_allah_view.dart';
import 'package:quran_project/view/quran/names/names_quran_view.dart';
import 'package:quran_project/view/salah_timing/salah_timing_view.dart';

import 'package:quran_project/view/sebha/sebha_view.dart';
import 'package:quran_project/view/zakah/zakah_view.dart';

import '../../constant/images_constant.dart';
import '../azkar/azkar_view.dart';

class CustomHomeCardWidget extends StatelessWidget {
  const CustomHomeCardWidget({Key? key, required this.index}) : super(key: key);
  final List<String> lst = const [
    'السبحة', 'الاحاديث','القران الكريم',
  'مواعيد الصلاة' , 'الأذكار','القبلة',
    'أسماء الله الحسنى' ,
    'الأدعية' ,
    'اليوميات',
    'الراديو'
  ] ;
  final List<String> images = const [

ImageConstant.sebhaIcon , ImageConstant.ahadethIcon, ImageConstant.quranIcon ,
    ImageConstant.salahTimingIcon, ImageConstant.azanIcon , ImageConstant.qiblaIcon,
    ImageConstant.salahTimingIcon, ImageConstant.azanIcon , ImageConstant.qiblaIcon,
  ];
final int index;
  final TextStyle style = const TextStyle(
    color: Colors.black ,
    fontWeight: FontWeight.bold,
    // fontSize: 14
  );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()  {
        Navigator.pushNamed(context,

            index==0 ? SebhaView.id :
                index==1? AhadethView.id:
                    index ==2? NamesQuranView.id:
                        index==3? SalahTimingScreen.id:
            index==4?
            AzkarView.id :

             index==6?
             NamesOfAllahView.id:DoaaView.id);
      } ,
      child: SizedBox(
        height: returnHeightMediaQuery(ctx: context, size: 0.15),
        width: returnWidthMediaQuery(ctx: context, size: .3),
        child: Card(
          elevation:5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(width: 0.1)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(images[index] ,
              alignment: Alignment.center,
              height: returnHeightMediaQuery(ctx: context, size: 0.06),
              width: MediaQuery.of(context).size.width*0.08,
                // height: MediaQuery.of(context).size.height*0.05 ,
              ),
              Text(lst[index],
                  textAlign: TextAlign.center,
                  style: style),
            ],
          ),
        ),
      ),
    );
  }
}

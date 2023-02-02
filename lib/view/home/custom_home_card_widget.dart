import 'package:flutter/material.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/view/quran/names/names_quran_view.dart';
import 'package:quran_project/view/sebha/sebha_view.dart';
import 'package:quran_project/view/zakah/zakah_view.dart';

import '../../constant/images_constant.dart';
import '../azkar/azkar_view.dart';

class CustomHomeCardWidget extends StatelessWidget {
  const CustomHomeCardWidget({Key? key, required this.index}) : super(key: key);
  final List<String> lst = const ['السبحة', 'الاحاديث','القران الكريم',

  'مواعيد الصلاة' , 'الأذكار','القبلة',
  ] ;
final int index;
  @override

  final TextStyle style = const TextStyle(
    color: Colors.black ,
    fontWeight: FontWeight.bold,
    // fontSize: 14
  );
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()  {

        Navigator.pushNamed(context,

            index==0 ? SebhaView.id :
            index==4?
            AzkarView.id :   ZakahView.id);
      } ,
      child: Card(
        elevation:5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(width: 0.1)
        ),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImageConstant.quranIcon ,
              width: MediaQuery.of(context).size.width*0.1,
                // height: MediaQuery.of(context).size.height*0.05 ,
              ),
              Text(lst[index],style: style),
            ],
          ),
        ),
      ),
    );
  }
}

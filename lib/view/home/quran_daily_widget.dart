import 'package:flutter/material.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/constant/size_constant.dart';

class QuranDailyWidget extends StatelessWidget {
  const QuranDailyWidget({Key? key}) : super(key: key);


  final  TextStyle style = const  TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  final  TextStyle style1 = const  TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    fontFamily: 'quran'

  );
  final  TextStyle style2 = const  TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,

  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(
          right: MediaQuery.of(context).size.width*0.025,
          left: MediaQuery.of(context).size.width*0.025,
          top: MediaQuery.of(context).size.width*0.05,
          bottom: MediaQuery.of(context).size.width*0.03,

      ),
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColorsConstant.primaryColor
      ),
      child: Column(
        children: [
          Text('بسم الله الرحمن الرحيم',
              style:style.copyWith(
                fontSize: returnHeightMediaQuery(ctx: context, size: 0.02)
              ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
          Padding(
            padding:  EdgeInsets.symmetric(
                horizontal: returnWidthMediaQuery(ctx: context, size: 0.01)),
            child: Text('وَإِذْ قَالَ رَبُّكَ لِلْمَلَٰٓئِكَةِ إِنِّى جَاعِلٌ فِى ٱلْأَرْضِ خَلِيفَةً قَالُوٓا۟ أَتَجْعَلُ فِيهَا مَن يُفْسِدُ فِيهَا وَيَسْفِكُ ٱلدِّمَآءَ وَنَحْنُ نُسَبِّحُ بِحَمْدِكَ وَنُقَدِّسُ لَكَ قَالَ إِنِّىٓ أَعْلَمُ مَا لَا تَعْلَمُون',
              style: style1.copyWith(
                fontSize: returnHeightMediaQuery(ctx: context, size: 0.02)
              ),
              textAlign: TextAlign.center,
            ),
          ),
           SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          Padding(
            padding:  EdgeInsets.only(

              right: MediaQuery.of(context).size.width*0.05,
              left: MediaQuery.of(context).size.width*0.05,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('رقم  [11]',style: style2.copyWith(
                  fontSize: returnHeightMediaQuery(ctx: context, size: 0.018)
                ),),
                Text('سورة البقرة',style: style2.copyWith(
                    fontSize: returnHeightMediaQuery(ctx: context, size: 0.018)
                ),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(

              right: MediaQuery.of(context).size.width*0.05,
              left: MediaQuery.of(context).size.width*0.05,
            ),
            child: const Divider(
              color: Colors.white,
              thickness: 1,

            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.send_rounded,color: Colors.white,textDirection: TextDirection.ltr),
              const SizedBox(width: 10,),
              Text('مشاركة ',style: style.copyWith(

                  fontSize: returnHeightMediaQuery(ctx: context, size: 0.02)

              ),)
            ],
          )
        ],
      ),
    );
  }
}


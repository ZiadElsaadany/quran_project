import 'package:flutter/material.dart';
import 'package:quran_project/view/quran/surah/return_basmala.dart';

import '../../../constant/sowar.dart';
import 'koran_widget.dart';

class CustomSurahViewBody extends StatelessWidget {
  const CustomSurahViewBody({Key? key,required this.indx}) : super(key: key);

  final int indx;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*0.02),
      child: ListView.separated(

        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(10),

        separatorBuilder: (ctx, index) {
          return  SizedBox(
            height: MediaQuery.of(context).size.height*0.04,
          );
        },
        itemBuilder: (ctx, index) {
          return     indx!= 0 && indx!= 8 &&index==0?
          Wrap(
            textDirection: TextDirection.rtl,
            alignment: WrapAlignment.center,
          direction: Axis.horizontal,

            children: [
              const ReturnBasmala(),
              KoranWidget(index1: indx, index2: index)
            ],
          ) : KoranWidget(index1: indx, index2: index);
        },
        itemCount: Sowar.sowar['sowar']![indx]['verses'].length,
      ),
    );
  }
}

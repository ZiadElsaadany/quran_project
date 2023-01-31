import 'package:flutter/material.dart';

class QuranDailyWidget extends StatelessWidget {
  const QuranDailyWidget({Key? key}) : super(key: key);


  final  TextStyle style = const  TextStyle(
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black
      ),
      child: Column(
        children: [
          Text('بسم الله الرحمن الرحيم',
              style:style
          ),
          Text('وَإِذْ قَالَ رَبُّكَ لِلْمَلَٰٓئِكَةِ إِنِّى جَاعِلٌ فِى ٱلْأَرْضِ خَلِيفَةً قَالُوٓا۟ أَتَجْعَلُ فِيهَا مَن يُفْسِدُ فِيهَا وَيَسْفِكُ ٱلدِّمَآءَ وَنَحْنُ نُسَبِّحُ بِحَمْدِكَ وَنُقَدِّسُ لَكَ قَالَ إِنِّىٓ أَعْلَمُ مَا لَا تَعْلَمُون',
            style: style,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('رقم 11',style: style,),
              Text('سورة البقرة',style: style,),
            ],
          ),
          const Divider(
            color: Colors.white,
            thickness: 1,
            endIndent: 20,
            indent: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.send_rounded,color: Colors.white,textDirection: TextDirection.ltr),
              const SizedBox(width: 10,),
              Text('مشاركة ',style: style,)
            ],
          )
        ],
      ),
    );
  }
}


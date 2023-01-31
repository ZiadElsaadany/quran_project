
import 'package:flutter/material.dart';
import 'package:quran_project/constant/arabic_number_converter.dart';
class ArabicSurahNumber extends StatelessWidget {
  const ArabicSurahNumber({Key? key,required this.i}) : super(key: key);

  final int i ;
  @override
  Widget build(BuildContext context) {
    return Text(
      (i).toString().toArabicNumbers,
      textDirection: TextDirection.ltr,
      style:  const TextStyle(
        fontWeight: FontWeight.w900,
        color: Color.fromARGB(196, 0, 0, 0),
        fontFamily: "me_quran",
        fontSize: 12.0,


      ),
    );
  }
}

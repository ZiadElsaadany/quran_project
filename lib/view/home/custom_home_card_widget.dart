import 'package:flutter/material.dart';
import 'package:quran_project/view/quran/names/names_quran_view.dart';
import 'package:quran_project/view/zakah/zakah_view.dart';

class CustomHomeCardWidget extends StatelessWidget {
  const CustomHomeCardWidget({Key? key, required this.index}) : super(key: key);
  final List<String> lst = const ['السبحة', 'الاحاديث','القران الكريم',

  'مواعيد الصلاة' , 'الأذكار','القبلة',
  ] ;
final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()  {

        Navigator.pushNamed(context,

            index==0 ?  NamesQuranView.id: ZakahView.id);
      } ,
      child: Card(
        elevation:5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(width: 0.1)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 2,
                child: Image.asset('asset/images/allah.jpg')),
            Expanded(
                flex: 1,
                child:  Text(lst[index])),
          ],
        ),
      ),
    );
  }
}

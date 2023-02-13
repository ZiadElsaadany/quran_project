import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/animation/fade_animation.dart';
import 'package:quran_project/view/quran/names/NamesFromSearch.dart';
import 'package:quran_project/view/quran/names/custom_list_view_names.dart';
import 'package:quran_project/view/widgets/custom_text_field.dart';

import '../../../constant/color_constant.dart';
import '../../../controller/providers/quran_provider.dart';



class NamedQuranViewBody extends StatelessWidget {
  const NamedQuranViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
           children:  [
 FadeAnimation(
   1,
   child: CustomTextFiled(
       mxLines: 1,
       hintText: 'ابحث عن اسم السورة الذي تريدها..',
contentPadding: 0.014,
icon: const Icon(Icons.search,color: AppColorsConstant.primaryColor,

),

onChanged: (value) {
    Provider.of<KoranProvider>(context, listen: false)
        .getNameOfKoran(word: value);
}
),
 ),
             SizedBox(height: MediaQuery.of(context).size.height*0.04,),
             !Provider.of<KoranProvider>(context).search?
             const Expanded(child: CustomListView()) : Provider.of<KoranProvider>(context).lst.isNotEmpty? const Expanded(child: NamesFromSearch()):
             const SizedBox()
          ],
        ),
      ),
    );
  }
}

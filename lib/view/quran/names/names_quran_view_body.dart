import 'package:flutter/material.dart';
import 'package:quran_project/view/quran/names/custom_list_view_names.dart';
import 'package:quran_project/view/quran/names/custom_text_field.dart';



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
const CustomTextFiled(),
             SizedBox(height: MediaQuery.of(context).size.height*0.04,),
            const Expanded(child: CustomListView()),
          ],
        ),
      ),
    );
  }
}

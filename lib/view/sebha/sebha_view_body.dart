import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/controller/providers/sebha_provider.dart';

import 'package:quran_project/view/sebha/add_sebha.dart';
import 'package:quran_project/view/sebha/sebha_details/alert_form_new_sebha.dart';
import 'package:quran_project/view/sebha/sebha_details/sebha_details_view.dart';
import 'package:quran_project/view/sebha/sebha_name_container.dart';

class SebhaViewBody extends StatelessWidget {
  const SebhaViewBody({Key? key}) : super(key: key);
final List<String> sebhaList =
  const  [
      'استغفار',
      'تكبير',
      'تهليل',
      'حوقلة',
      'بعد الصلاة',
    'تسابيح',
    'اضافة سبحة خاصة'
    ] ;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height*0.04,
          horizontal: MediaQuery.of(context).size.width*0.1
      ),
        itemBuilder: (ctx,index) {
          return  GestureDetector(
             onTap: () {
               Provider.of<SebhaProvider>(context,listen: false).changeArgs(index);
            index!=6 ? Navigator.pushNamed(context, SebhaDetailsView.id,
               arguments: index):
               AddSebha.showDialogFunction(context,const AlertSebhaForm());
             },
            child: SebhaNameContainer(
              txt: sebhaList[index],
            ),
          );
        },
      itemCount: sebhaList.length,
    );
  }
}


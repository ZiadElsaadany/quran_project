import 'package:flutter/material.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

import '../../constant/names_of_allah_constant.dart';

class NamesOfAllahContentView extends StatelessWidget {
  const NamesOfAllahContentView({Key? key}) : super(key: key);
static const String id = 'name content view';
  @override
  Widget build(BuildContext context) {
    final int index= ModalRoute.of(context)!.settings.arguments as int;
    return  Scaffold(

      appBar:customAppBar(context, names[index]['name']),
      body:const ContentOfNamesOfAllahBody() ,
    );
  }
}
class ContentOfNamesOfAllahBody extends StatelessWidget {
  const ContentOfNamesOfAllahBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

      ],
    );
  }
}


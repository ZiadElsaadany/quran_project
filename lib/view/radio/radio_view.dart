import 'package:flutter/material.dart';

import 'package:quran_project/view/radio/radio_view_body.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';


class RadioView extends StatelessWidget {
  const RadioView({Key? key}) : super(key: key);
static const String id= "radio";
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        //website for api --> https://mp3quran.net/ar/api
appBar: customAppBar(context, 'الراديو'),
        body: const RadioViewBody(),
      ),
    );
  }
}


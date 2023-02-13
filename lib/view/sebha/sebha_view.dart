import 'package:flutter/material.dart';
import 'package:quran_project/view/sebha/sebha_view_body.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({Key? key}) : super(key: key);
static const String id= 'sebha';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: const SebhaViewBody(),
        appBar: customAppBar(context, 'التسبيح'),
      ),
    );
  }
}

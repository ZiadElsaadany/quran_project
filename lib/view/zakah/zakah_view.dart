import 'package:flutter/material.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';
import 'package:quran_project/view/zakah/zakah_view_body.dart';


class ZakahView extends StatelessWidget {
  const ZakahView({Key? key}) : super(key: key);
static const String  id= 'Zakah View';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar(context, 'الزكاة'),
      body: const ZakahViewBody(),
    );
  }
}

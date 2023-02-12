import 'package:flutter/material.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

import 'azkar_view_body.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({Key? key}) : super(key: key);
static const String id=  'Azkar View';
  @override
  Widget build(BuildContext context) {
    return   Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: customAppBar(context, 'أذكار المسلم'),
        body: const AzkarViewBody(),
      ),
    );
  }
}


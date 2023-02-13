
import 'package:flutter/material.dart';

import '../../widgets/custom_App_bar.dart';
import 'custom_surah_view_body.dart';

class SurahView extends StatelessWidget {
  const SurahView({Key? key, required this.indx, required this.title}) : super(key: key);
  static const String id = 'KoranScreen';
  final int indx; // الفاتحة
  final String title;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: customAppBar(context, title),
          body: CustomSurahViewBody(indx: indx) ,
        ),
      ),
    );
  }
}

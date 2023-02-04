import 'package:flutter/material.dart';
import 'package:quran_project/constant/images_constant.dart';
import 'package:quran_project/constant/size_constant.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

import '../widgets/list_ahadeth_and_doaa_widget.dart';

class AhadethView extends StatelessWidget {
  const AhadethView({Key? key}) : super(key: key);
static const String id= 'ahadeth view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'الأحاديث'),
      body:  Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children:  [
            SizedBox(
              height: returnHeightMediaQuery(ctx: context, size: 0.03),
            ),
            const Expanded(
              child: ListAhadethAndDoaa(
                content: 'ربنا تقبل منا ',
                title: 'الحديث الأول',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

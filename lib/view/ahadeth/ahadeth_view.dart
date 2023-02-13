import 'package:flutter/material.dart';

import '../widgets/custom_App_bar.dart';
import 'hadeth_view_body.dart';

class AhadethView extends StatelessWidget {
  const AhadethView({Key? key}) : super(key: key);
static const String id= 'ahadeth view';


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: customAppBar(context, 'الأحاديث'),
        body: const HadethViewBody() ,
      ),
    );
  }
}


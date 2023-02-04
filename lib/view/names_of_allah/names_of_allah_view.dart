import 'package:flutter/material.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

import 'names_of_Allah_view_body.dart';

class NamesOfAllahView extends StatelessWidget {
  const NamesOfAllahView({Key? key}) : super(key: key);
static const String id= 'NamesOfAllah';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar(context, 'أسماء الله الحسنى'),
      body: const NamesOfAllahViewBody(),
    );
  }
}

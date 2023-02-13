import 'package:flutter/material.dart';
import 'package:quran_project/view/more/more_view_body.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

class MoreView extends StatelessWidget {
  const MoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: customAppBar(context, 'المزيد'),
        body: const  MoreViewBody(),
      ),
    ); 

  }
}

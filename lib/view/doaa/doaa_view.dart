

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/controller/providers/doaa_provider.dart';

import 'package:quran_project/view/widgets/custom_App_bar.dart';

import 'doaa_view_body.dart';

class DoaaView extends StatelessWidget {
  const DoaaView({Key? key}) : super(key: key);
static const String id=  'doaa ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'الأدعية'),
      body: const DoaaViewBody(),
      floatingActionButton:  Provider.of<DoaaProvider>(context).checkClick?
           null : FloatingActionButton(
        backgroundColor:AppColorsConstant.primaryColor,
        onPressed: (){ } ,
      child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}



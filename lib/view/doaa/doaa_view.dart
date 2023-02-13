

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/controller/providers/doaa_provider.dart';
import 'package:quran_project/models/doaa_added_model_hive/doaa_added_model_hive.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

import 'custom_floating_action_button.dart';
import 'doaa_view_body.dart';

class DoaaView extends StatelessWidget {
  const DoaaView({Key? key}) : super(key: key);
static const String id=  'doaa ';
  @override
  Widget build(BuildContext context) {
    return Consumer<DoaaProvider>(
      builder: (context,provider,_) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: customAppBar(context, 'الأدعية'),
            body: const DoaaViewBody(),
            floatingActionButton:  Provider.of<DoaaProvider>(context).checkClick?
                 null :  const CustomFloatingActionButton()
            ,
            floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          ),
        );
      }
    );
  }
}



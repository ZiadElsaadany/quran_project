
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/arabic_number_converter.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/constant/images_constant.dart';
import 'package:quran_project/controller/providers/sebha_provider.dart';
import 'package:quran_project/view/sebha/sebha_details/row_of_update_and_add.dart';
import 'package:quran_project/view/sebha/sebha_details/sebha_details_view_body.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

import 'custom_elevated_button.dart';

class SebhaDetailsView extends StatelessWidget {
  const SebhaDetailsView({Key? key}) : super(key: key);
  static const String id ='sebha details view';
  @override
  Widget build(BuildContext context) {
    int args =ModalRoute.of(context)!.settings.arguments as int  ;
    return Scaffold(
      appBar: customAppBar(context,
          args==0 ? 'الاستغفار' :
          args == 1? 'التكبير':
          args==2 ? 'التهليل'   :
          args== 3? 'الحوقلة'    :
          args ==4? 'بعد الصلاة'    :
              'تسابيح'
      ),
      body: SebhaViewDetailsBody(index: args),
    );
  }
}

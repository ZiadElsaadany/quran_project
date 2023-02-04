
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/controller/providers/sebha_provider.dart';
import 'package:quran_project/view/sebha/sebha_details/sebha_details_view_body.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';


class SebhaDetailsView extends StatelessWidget {
  const SebhaDetailsView({Key? key}) : super(key: key);
  static const String id ='sebha details view';
  @override
  Widget build(BuildContext context) {
    return Consumer<SebhaProvider>(
      builder: (context,provider,_) {
        return Scaffold(
          appBar: customAppBar(
              context,
             provider.args==0 ? 'الاستغفار' :
             provider.args == 1? 'التكبير':
             provider.args==2 ? 'التهليل'   :
             provider.args== 3? 'الحوقلة'    :
             provider.args ==4? 'بعد الصلاة'    :
             provider.args == 5? 'تسابيج'     :
             provider.args==6?
                  "سبحة خاصة": ""
          ),
          body:  SebhaViewDetailsBody(index: provider.args),
        );
      }
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/controller/providers/doaa_provider.dart';
import 'package:quran_project/view/ahadeth/ahadeth_view.dart';
import 'package:quran_project/view/doaa/toggle_widget.dart';
import 'package:quran_project/view/widgets/list_ahadeth_and_doaa_widget.dart';

import '../../constant/size_constant.dart';
import 'empty_doaa.dart';

class DoaaViewBody extends StatelessWidget {
  const DoaaViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Consumer<DoaaProvider>(
        builder: (context,provider,_) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: returnHeightMediaQuery(ctx: context, size: 0.05),),
                const ToggleWidget(),
                SizedBox(height: returnHeightMediaQuery(ctx: context, size: 0.03),),
              Expanded(
                  child:

              provider.checkClick==false?
                  const EmptyDoaa()  : const ListAhadethAndDoaa(title: 'الدعاء الاول', content: 'داء دعاء '),
                )
              ],
            ),
          );
        }
      ),
    );
  }
}

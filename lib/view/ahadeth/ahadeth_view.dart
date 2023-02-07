import 'package:flutter/material.dart';
import 'package:quran_project/constant/ahadeth_constant.dart';
import 'package:quran_project/constant/size_constant.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';
import '../../constant/images_constant.dart';
import '../doaa/doaa_card.dart';
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
             Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (ctx,index) {
                  return index == 9? Column(
                    children: [
                      DoaaCard(
                        checkAhadethOrDoaa: false,
                          title:ahadeth[index]['name'],
                          content: ahadeth[index]['text']
                      ),
                      Image.asset(ImageConstant.image,
                        height: returnHeightMediaQuery(ctx: context, size: 0.1),

                      )
                    ],
                  )   :  DoaaCard(
                    checkAhadethOrDoaa: false,
                      title:ahadeth[index]['name'],
                      content: ahadeth[index]['text']
                  );
                },
                itemCount: ahadeth.length,
              )
            ),
          ],
        ),
      ),
    );
  }
}

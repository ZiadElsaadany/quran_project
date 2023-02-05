import 'package:flutter/material.dart';

import '../../constant/images_constant.dart';
import '../../constant/size_constant.dart';
import '../doaa/doaa_card.dart';

class ListAhadethAndDoaa extends StatelessWidget {
  const ListAhadethAndDoaa({Key? key, required this.title, required this.content}) : super(key: key);


   final String title;
   final String content;

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (ctx,index) {
        return index == 9? Column(
          children: [
          DoaaCard(
              title:title,
              content: content
        ),
            Image.asset(ImageConstant.image,
              height: returnHeightMediaQuery(ctx: context, size: 0.1),

            )
          ],
        )   :  DoaaCard(
          title:title,
          content: content
        );
      },
      itemCount: 10,
    );
  }
}

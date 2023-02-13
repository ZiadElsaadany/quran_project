import 'package:flutter/material.dart';

import '../../constant/ahadeth_constant.dart';
import '../../constant/images_constant.dart';
import '../../constant/size_constant.dart';
import '../../models/hadeth_model/hadeth_model_hive.dart';
import 'card_hadeth.dart';

class HadethViewBody extends StatelessWidget {
  const HadethViewBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
            padding: EdgeInsets.symmetric(
                vertical: returnHeightMediaQuery(ctx: context,size: 0.01) ,
                horizontal:returnWidthMediaQuery(ctx: context, size: 0.03)
            ),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (ctx,index) {
              return index == ahadeth.length-1?
              Column(
                children: [
                  HadethCard(
                    model: HadethModel.c(index: index),
                  ),
                  Image.asset(ImageConstant.image,
                    height: returnHeightMediaQuery(ctx: context, size: 0.1),

                  )
                ],
              )
                  :

              HadethCard(
                model:HadethModel.c(index: index),
              );
            },
            itemCount:ahadeth.length,
          );
  }
}

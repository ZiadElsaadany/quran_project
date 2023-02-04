import 'package:flutter/material.dart';

import '../../constant/images_constant.dart';
import '../../constant/size_constant.dart';

class EmptyDoaa extends StatelessWidget {
  const EmptyDoaa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(ImageConstant.emptyDoaa,
          width: returnWidthMediaQuery(ctx: context, size: 0.22),

        ),
        SizedBox(height: returnHeightMediaQuery(ctx: context, size: 0.02),),
        Text('لم تقم باضافة اى دعاء جديد',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: returnFontSizeMediaQuery(ctx: context, size: 0.025)

          ),
        )
      ],
    );
  }
}

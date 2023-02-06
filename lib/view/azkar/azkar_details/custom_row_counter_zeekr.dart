

import 'package:flutter/material.dart';
import 'package:quran_project/constant/arabic_number_converter.dart';

import '../../../constant/images_constant.dart';
import '../../../constant/size_constant.dart';

class CustomRowOfNumberOfZekr extends StatelessWidget {
  const CustomRowOfNumberOfZekr({Key? key, required this.index, required this.title, required this.textColor, required this.imgColor}) : super(key: key);

  final int index ;

  final String title;
  final Color textColor;
  final Color imgColor;

  @override
  Widget build(BuildContext context) {
    return      Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(ImageConstant.itar,
              color: imgColor,
              height: returnHeightMediaQuery(ctx: context, size: 0.042),
              width: returnWidthMediaQuery(ctx: context, size: 0.1),

            ),
            Text('${index.toArabicNumbers}  ',
            textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        SizedBox(width: returnWidthMediaQuery(ctx: context, size: 0.01),),

        Text(title,
          style: TextStyle(
            color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: returnHeightMediaQuery(ctx: context, size:0.023)
          ),
        )
      ],
    );
  }
}

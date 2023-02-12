import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../../constant/size_constant.dart';

class CustomLinearPercent extends StatelessWidget {
  const CustomLinearPercent({Key? key, required this.number1, required this.number2, required this.color}) : super(key: key);
  final   int number1 ;
  final  int number2 ;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return       Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LinearPercentIndicator(

          width: returnWidthMediaQuery(ctx: context, size: 0.9),
         isRTL: true,
          lineHeight:returnHeightMediaQuery(ctx: context, size: 0.01),
          percent: number1/number2,
          backgroundColor: Colors.grey.withOpacity(0.4),
          progressColor: color,

        ),
      ],
    );
  }
}


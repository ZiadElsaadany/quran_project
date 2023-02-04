import 'package:flutter/material.dart';
import 'package:quran_project/constant/size_constant.dart';


class TimeContainer extends StatelessWidget {
  const TimeContainer({Key? key,
  required this.img,
    required this.salahName ,
    required this.salahTime
  }) : super(key: key);
final String img ;
final String salahName ;
final String salahTime ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(

       horizontal:returnWidthMediaQuery(ctx: context, size: 0.03),
       vertical:returnHeightMediaQuery(ctx: context, size: 0.004),
      ),
      child: Container(
        decoration: BoxDecoration(
          border:Border.all(color: Colors.grey.withOpacity(0.5))
        ),
        padding:  EdgeInsets.all(
            returnHeightMediaQuery(ctx: context, size: 0.01)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset( img,
            height: returnHeightMediaQuery(ctx: context, size: 0.03),
            ) ,
            Text(salahName,
              style: const TextStyle(
                fontWeight: FontWeight.bold
              ),

            ),
            Text(salahTime,
            ),
          ],
        ),
      ),
    );
  }
}

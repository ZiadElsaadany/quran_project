
import 'package:flutter/material.dart';

import '../../constant/color_constant.dart';
import '../../constant/size_constant.dart';

class DoaaCard extends StatelessWidget {
  const DoaaCard({Key? key, required this.title, required this.content}) : super(key: key);
 final  String title;
 final  String content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(

        horizontal: returnWidthMediaQuery(ctx: context, size: 0.05) ,
        vertical: returnHeightMediaQuery(ctx: context, size: 0.01) ,
      ),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder (
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Container(
              padding:  EdgeInsets.symmetric(
                horizontal: returnWidthMediaQuery(ctx: context, size: 0.04) ,

              ),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: AppColorsConstant.primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10) ,
                    topRight: Radius.circular(10) ,
                  )
              ),
              child: Row(
                children: [
                  Text(title ,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const Spacer(),
                  IconButton(icon: const Icon( Icons.save) ,
                    onPressed: ( ) { },
                    color: Colors.white,),
                  IconButton(icon: const Icon( Icons.copy) ,
                    onPressed: ( ) { },
                    color: Colors.white,),

                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(
                  horizontal: returnWidthMediaQuery(ctx: context, size: 0.07) ,
                  vertical: returnHeightMediaQuery(ctx: context, size: 0.05)
              ),
              child: Text(
                content,
                style: TextStyle (
                    fontWeight: FontWeight.w600,
                    fontSize: returnFontSizeMediaQuery(ctx: context,size: 0.025)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran_project/models/hadeth_model/hadeth_model_hive.dart';

import '../../constant/color_constant.dart';
import '../../constant/size_constant.dart';

class HadethCard extends StatelessWidget {
  const HadethCard({Key? key, required this.model, this.onPressed}) : super(key: key);
final HadethModel model ;
final  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        vertical: returnHeightMediaQuery(ctx: context, size: 0.004) ,
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
                    horizontal: returnWidthMediaQuery(ctx: context, size: 0.04),
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
                       Expanded(
                        child: Text(
                          model.title??""
                          ,
                          maxLines: 2,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),

                      IconButton(
                        onPressed:onPressed,
                        icon:
                      Icon(
                        color: Colors.white,
                        FontAwesomeIcons.solidBookmark,
                        size: returnFontSizeMediaQuery(ctx: context, size: 0.03),
                      ) ,

                      ) ,

                      Icon( Icons.copy,
                        color: Colors.white,
                        size: returnFontSizeMediaQuery(ctx: context, size: 0.04),
                      ) ,
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(
                      horizontal: returnWidthMediaQuery(ctx: context, size: 0.07) ,
                      vertical: returnHeightMediaQuery(ctx: context, size: 0.03)
                  ),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: [
                      SelectableText(
                        model.start??"",
                        textAlign: TextAlign.center,
                        style: TextStyle (
                            fontSize: returnFontSizeMediaQuery(ctx: context,size: 0.025)
                        ),
                      ),
                      SelectableText(
                        model.content??"",
                        textAlign: TextAlign.center,
                        style: TextStyle (
                            fontWeight: FontWeight.w600,
                            fontSize: returnFontSizeMediaQuery(ctx: context,size: 0.025)
                        ),
                      ),
                      SelectableText(
                        model.end??"",
                        textAlign: TextAlign.center,
                        style: TextStyle (
                            // fontWeight: FontWeight.w600,
                            fontSize: returnFontSizeMediaQuery(ctx: context,size: 0.025)
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )

    );
  }
}

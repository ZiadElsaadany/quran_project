
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constant/color_constant.dart';
import '../../constant/size_constant.dart';
import '../../controller/providers/doaa_provider.dart';

class ToggleWidget extends StatelessWidget {
  const ToggleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle style = TextStyle(
        color: Colors.white,
        fontSize: returnFontSizeMediaQuery(ctx: context, size: 0.025),
        fontWeight: FontWeight.bold
    );
    return  Container(
      width: MediaQuery.of(context).size.width * 0.57,
      height: MediaQuery.of(context).size.height*0.07,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColorsConstant.primaryColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular( MediaQuery.of(context).size.height*0.035,),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Provider.of<DoaaProvider>(context, listen: false).changeCheck(state: true);
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Provider.of<DoaaProvider>(context).checkClick
                      ? AppColorsConstant.primaryColor
                      : Colors.transparent,
                  borderRadius: Provider.of<DoaaProvider>(context).checkClick
                      ?  BorderRadius.circular( MediaQuery.of(context).size.height*0.035,)
                      : null,
                ),
                child: Text('الادعية',
                  style: style,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Provider.of<DoaaProvider>(context, listen: false).changeCheck(state: false);
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: !Provider.of<DoaaProvider>(context).checkClick
                      ? AppColorsConstant.primaryColor
                      : Colors.transparent,
                  borderRadius: !Provider.of<DoaaProvider>(context).checkClick
                      ?  BorderRadius.circular( MediaQuery.of(context).size.height*0.035,)
                      : null,
                ),
                child: Text('دعائي',
                  style: style,

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
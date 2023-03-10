
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/controller/providers/doaa_provider.dart';
import 'package:quran_project/models/doaa_added_model_hive/doaa_added_model_hive.dart';


import '../../constant/color_constant.dart';
import '../../constant/size_constant.dart';

class DoaaCard extends StatelessWidget {
  const DoaaCard({Key? key, required this.model, this.onPressed,  this.colorOfFavIcon=Colors.white,}) : super(key: key);
final DoaaAddedModel model ;
final void Function()? onPressed;
final Color ?colorOfFavIcon ;

  // true  -->fav doaa
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
                  Expanded(
                    child: Text(
                model.doaaName??""
                ,
        maxLines: 2,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
        Provider.of<DoaaProvider>(context).checkClick==false?
        IconButton(icon:
                   Icon(
                   FontAwesomeIcons.solidBookmark,
               size: returnFontSizeMediaQuery(ctx: context, size: 0.03),
                  ) ,
                    onPressed:onPressed,
                    color:colorOfFavIcon,
                  ) : Padding(padding:
        EdgeInsets.symmetric(
          vertical: returnHeightMediaQuery(ctx: context, size: 0.032)
        )
        )
                  ,
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
              child: SelectableText(

    model.doaaContent??"",
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


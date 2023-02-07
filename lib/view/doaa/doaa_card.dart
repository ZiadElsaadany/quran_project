
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/controller/providers/favourites_provider.dart';
import 'package:quran_project/models/doaa_added_model_hive/doaa_added_model_hive.dart';

import '../../constant/color_constant.dart';
import '../../constant/size_constant.dart';

class DoaaCard extends StatelessWidget {
  const DoaaCard({Key? key, required this.title, required this.content, required this.checkAhadethOrDoaa}) : super(key: key);
 final  String title;
 final  String content;
 final bool  checkAhadethOrDoaa;
 // true  -->fav doaa
  // false --> fav hadeth
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
                    child: Text(title ,
        maxLines: 2,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  IconButton(icon: const Icon( Icons.favorite) ,
                    onPressed: ( ) {
        if(   checkAhadethOrDoaa ) {

          Provider.of<FavouriteProvider>(context,listen: false).addFavDoaaList(
            DoaaAddedModel(doaaContent:content , doaaName: title)
          );
        }
                    },
                    color: Colors.white,),
                 const Icon( Icons.copy,
                 color: Colors.white,
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
                content,
                onTap: ( ) {
                  print ('copied');
                } ,

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


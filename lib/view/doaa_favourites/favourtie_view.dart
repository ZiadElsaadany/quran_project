import 'package:flutter/material.dart';
import 'package:quran_project/constant/size_constant.dart';


import 'package:quran_project/view/widgets/custom_App_bar.dart';

import '../sebha/sebha_name_container.dart';
import 'favourite_details.dart';


class FavouriteView extends StatelessWidget {
  const FavouriteView({Key? key}) : super(key: key);
  static const String id ='favourite';

  final List<String> txt= const [
    'الايات المفضلة' ,
    'الأدعية المفضلة',
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: customAppBar(context, 'المفضلة'),
        body:ListView.builder(
              padding: EdgeInsets.symmetric(vertical: returnHeightMediaQuery(ctx: context, size: 0.2),
              horizontal: returnWidthMediaQuery(ctx: context, size: 0.05)
              ),
             itemBuilder: (ctx,index)=> GestureDetector(
                 onTap: ( ) {
                   Navigator.push(context, MaterialPageRoute(builder:
                   (ctx)  {
                     return   FavouriteDetailsView(
                       appBarTitle: txt[index],
                     );
                   }
                   ));

                 } ,
                 child: SebhaNameContainer(txt:txt[index],)),
              itemCount: 2,
            )
      ),
    );
  }
}

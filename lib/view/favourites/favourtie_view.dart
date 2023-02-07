import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/size_constant.dart';
import 'package:quran_project/controller/providers/favourites_provider.dart';
import 'package:quran_project/view/favourites/favourite_details.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

import '../sebha/sebha_name_container.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({Key? key}) : super(key: key);
  static const String id ='favourite';

  final List<String> txt= const [
    'الايات المفضلة' ,
    'الأدعية المفضلة',
    'الأحاديث المفضلة'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'المفضلة'),
      body:Directionality(
        textDirection: TextDirection.rtl,
        child: Consumer<FavouriteProvider>(
          builder: (context,provider,_) {
            return ListView.builder(
              padding: EdgeInsets.symmetric(vertical: returnHeightMediaQuery(ctx: context, size: 0.2),
              horizontal: returnWidthMediaQuery(ctx: context, size: 0.05)
              ),
             itemBuilder: (ctx,index)=> GestureDetector(
                 onTap: ( ) {
                   Navigator.push(context, MaterialPageRoute(builder:
                   (ctx)  {
                     return  FavouriteDetailsView(
                       checkPage: index==1? 1 :0,
                       appBarTitle: txt[index],

                     );
                   }
                   ));

                 } ,
                 child: SebhaNameContainer(txt:txt[index],)),
              itemCount: 3,
            );
          }
        ),
      )
    );
  }
}

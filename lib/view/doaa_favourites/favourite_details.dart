import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/size_constant.dart';
import 'package:quran_project/controller/providers/doaa_provider.dart';
import 'package:quran_project/models/doaa_added_model_hive/doaa_added_model_hive.dart';
import 'package:quran_project/view/doaa/doaa_card.dart';
import 'package:quran_project/view/doaa/empty_doaa.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

class FavouriteDetailsView extends StatefulWidget {
  const FavouriteDetailsView({Key? key, required this.appBarTitle}) : super(key: key);
final String appBarTitle;
static const String id= 'doaa favourite';

  @override
  State<FavouriteDetailsView> createState() => _FavouriteDetailsViewState();
}

class _FavouriteDetailsViewState extends State<FavouriteDetailsView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () async {
      Provider.of<DoaaProvider>(context, listen: false).readDoaaFromHive();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: customAppBar(context,widget.appBarTitle ),

          body:
          Provider.of<DoaaProvider>(context).favouriteDoaa.isNotEmpty &&
                  Provider.of<DoaaProvider>(context,listen: false).favouriteDoaa!=[]
      ?
          Directionality(
            textDirection: TextDirection.rtl,
            child: Consumer<DoaaProvider>(
              builder: (context, provider, _ ) {
                return ListView.builder(
                  padding:  EdgeInsets.symmetric(
                    horizontal:returnWidthMediaQuery(ctx: context, size: 0.02) ,
                    vertical: returnHeightMediaQuery(ctx: context, size: 0.03)
                  ),
                    itemBuilder:(ctx,index) {
                      return
                        DoaaCard(
                          colorOfFavIcon: Colors.red,
    onPressed: (){
                        provider.favouriteDoaa[index].favCheck= false;
                        provider.favouriteDoaa[index].save();
                     provider.readDoaaFromHive();


  },
                            model: DoaaAddedModel(
                              doaaName:Provider.of<DoaaProvider>(context,listen: false).favouriteDoaa[index].doaaName??"" ,
                              doaaContent:Provider.of<DoaaProvider>(context,listen: false).favouriteDoaa[index].doaaContent ,
                              favCheck: true
                            )
                        );


                    }  ,
                    itemCount:Provider.of<DoaaProvider>(context).favouriteDoaa.length
                );
              }
            ),
          )

                  :

              const Center(child: EmptyDoaa(title: 'لم تقم باضافة اى دعاء في المفضلة',))  ,
        );

  }
}

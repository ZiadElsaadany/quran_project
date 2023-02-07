import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/size_constant.dart';
import 'package:quran_project/controller/providers/favourites_provider.dart';
import 'package:quran_project/view/doaa/doaa_card.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

class FavouriteDetailsView extends StatefulWidget {
  const FavouriteDetailsView({Key? key, required this.appBarTitle, required this.checkPage}) : super(key: key);
final String appBarTitle;
final int checkPage;
static const String id= 'doaa favourite';

  @override
  State<FavouriteDetailsView> createState() => _FavouriteDetailsViewState();
}

class _FavouriteDetailsViewState extends State<FavouriteDetailsView> {
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
Future.delayed(Duration.zero, ()async{
  Provider.of<FavouriteProvider>(context,listen: false).fetchAllFavDoaa();

});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: customAppBar(context,widget.appBarTitle ),

      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          padding:  EdgeInsets.symmetric(
            horizontal:returnWidthMediaQuery(ctx: context, size: 0.02) ,
            vertical: returnHeightMediaQuery(ctx: context, size: 0.03)
          ),
            itemBuilder:(ctx,index) {
              return DoaaCard(
               checkAhadethOrDoaa:  true,
                  title: widget.checkPage==1?
                  Provider.of<FavouriteProvider>(context,listen: false).favDoaaList[index].doaaName?? "":
                  ""
                  ,
                  content: widget.checkPage==1? Provider.of<FavouriteProvider>(context,listen: false).favDoaaList[index].doaaContent?? "":
                  ""
              );
            }  ,
            itemCount: widget.checkPage==1?Provider.of<FavouriteProvider>(context).favDoaaList.length :1
        ),
      ),
    );
  }
}

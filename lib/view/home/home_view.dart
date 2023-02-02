import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/controller/providers/bottom_nav_provider.dart';
import 'package:quran_project/view/home/custom_bottom_nav_bar.dart';
import 'package:quran_project/view/quran/names/names_quran_view.dart';


import '../../controller/providers/quran_provider.dart';
import '../azkar/azkar_view.dart';
import '../widgets/custom_App_bar.dart';
import 'home_view_body.dart';

class HomeView extends StatefulWidget {
  static  const  String id ='HOME View ';
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () async{
      Provider.of<KoranProvider>(context, listen: false).makeList();
    });
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [const HomeViewBody(), const NamesQuranView(),HomeViewBody() , AzkarView(), HomeViewBody()] ;
    return     Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          appBar:Provider.of<BottomNavProvider>(context).currentIndex!=0?  customAppBar(
              context,
              Provider.of<BottomNavProvider>(context).currentIndex==1 ?
              'القران الكريم':   Provider.of<BottomNavProvider>(context).currentIndex==3 ?
                  'الأذكار' :
                  'المزيد'

                                    ) : AppBar
            (
            backgroundColor: Colors.transparent,
            toolbarHeight: 0,
          ),

          body:screens[Provider.of<BottomNavProvider>(context).currentIndex],
          bottomNavigationBar: const CustomBottomNavBar(),
          floatingActionButton: const CustomFloatingActionButton(),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,


        ),
      ),
    );
  }
}

  class CustomFloatingActionButton extends StatefulWidget {
  const CustomFloatingActionButton({Key? key}) : super(key: key);

  @override
  State<CustomFloatingActionButton> createState() => _CustomFloatingActionButtonState();
}

class _CustomFloatingActionButtonState extends State<CustomFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        shape: RoundedRectangleBorder(
            side: const BorderSide(
                color: Colors.white ,
                width:2
            ),
            borderRadius: BorderRadius.circular(100)
        ),
        backgroundColor: AppColorsConstant.primaryColor,
        onPressed: (){

          Provider.of<BottomNavProvider>(context,listen: false).changeIndex(2);
          setState(() {});

        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('الصلاة',
              style: TextStyle(
                  fontSize: 12
              ),

            )
          ],
        )

    ) ;
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/controller/providers/bottom_nav_provider.dart';
import 'package:quran_project/view/home/custom_bottom_nav_bar.dart';
import 'package:quran_project/view/quran/names/names_quran_view.dart';
import 'package:quran_project/view/salah_timing/salah_timing_view.dart';
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
    List<Widget> screens = [const HomeViewBody(), const NamesQuranView(),const SalahTimingScreen() , const AzkarView(), const HomeViewBody()] ;
    return     Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          appBar:Provider.of<BottomNavProvider>(context).currentIndex!=0?  customAppBar(
              context,
              Provider.of<BottomNavProvider>(context).currentIndex==1 ?
              'القران الكريم':   Provider.of<BottomNavProvider>(context).currentIndex==3 ?
                  'الأذكار' :
              Provider.of<BottomNavProvider>(context).currentIndex==2 ?
              'مواعيد الصلاة':
              'المزيد'

                                    ) : AppBar
            (
            backgroundColor: Colors.transparent,
            toolbarHeight: 0,
          ),

          body:screens[Provider.of<BottomNavProvider>(context).currentIndex],
          bottomNavigationBar: const CustomBottomNavBar(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,


        ),
      ),
    );
  }
}



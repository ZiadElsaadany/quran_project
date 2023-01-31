import 'package:flutter/material.dart';

import 'custom_bottom_nav_bar.dart';
import 'home_view_body.dart';

class HomeView extends StatelessWidget {
  static  const  String id ='HOME View ';
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   const Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: HomeViewBody(),

          // floatingActionButton: FloatingActionButton(
          //     onPressed: (){},
          //
          //     ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
          // bottomNavigationBar: BottomAppBar( //to margin between floating and bottom
          //   clipBehavior: Clip.antiAlias, //to margin between floating and bottom
          //   shape: const CircularNotchedRectangle(), //to margin between floating and bottom
          //   notchMargin: 5,    //to margin between floating and bottom
          //   child:CustomBottomNavBar(),
          // ),
        ),
      ),
    );
  }
}

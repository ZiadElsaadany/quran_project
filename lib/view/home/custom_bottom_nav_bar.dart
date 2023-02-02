
import 'package:flutter/material.dart';
import 'package:quran_project/constant/color_constant.dart';

import 'nav_bar_item.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height*0.01),
      decoration: const BoxDecoration(
        color:AppColorsConstant.primaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const BottomNavItem(icon: Icons.home, title: 'Home'),
         const BottomNavItem(icon: Icons.home, title: 'Home'),
      SizedBox(width: MediaQuery.of(context).size.width*0.1,),
          const BottomNavItem(icon: Icons.home, title: 'Home'),
          const BottomNavItem(icon: Icons.home, title: 'Home'),

        ],
      ),
    );
  }
}



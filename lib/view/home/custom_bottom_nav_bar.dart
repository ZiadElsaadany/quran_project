
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/controller/providers/bottom_nav_provider.dart';


class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(
      builder: (context,provider,_) {
        return BottomAppBar( //to margin between floating and bottom
          clipBehavior: Clip.antiAlias, //to margin between floating and bottom
          shape: const CircularNotchedRectangle(), //to margin between floating and bottom
          notchMargin: 5,    //to margin between floating and bottom
          child: BottomNavigationBar(
            currentIndex: provider.currentIndex,

            onTap: (index){
             if(  index == 2 ) {
               return;
             }
              provider.changeIndex(index);
            },
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedItemColor: AppColorsConstant.primaryColor,
            unselectedItemColor: AppColorsConstant.grey,
            items: const [
              BottomNavigationBarItem(
                icon:Icon(Icons.list ) ,
                label:  "الريسية",
              ),
              BottomNavigationBarItem(
                icon:Icon(Icons.settings) ,
                label:  "القران",
              ) ,
              BottomNavigationBarItem(
                activeIcon: SizedBox(),
                icon:SizedBox(),
                label:  "",
              ) ,
              BottomNavigationBarItem(
                icon:Icon(Icons.settings) ,
                label:  "الأذكار",
              ) ,
              BottomNavigationBarItem(
                icon:Icon(Icons.settings) ,
                label:  "المزيد",
              ) ,

            ],
          ),
        );
      }
    );
  }
}



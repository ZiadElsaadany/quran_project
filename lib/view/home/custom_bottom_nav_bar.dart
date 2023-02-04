import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/controller/providers/bottom_nav_provider.dart';
import '../../constant/images_constant.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar( //to margin between floating and bottom
elevation: 10,

          child:Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               const ItemOfBottom(
               img: ImageConstant.image,
                 title: 'الرئيسية',
                 index: 0 ,
               ),
                  const ItemOfBottom(
                img: ImageConstant.ahadethIcon,
                  title: 'القران',
                    index: 1 ,
                ),
                GestureDetector(
                  onTap: ( ) {
                     Provider.of<BottomNavProvider>(context,listen: false).changeIndex(2);
                  } ,
                  child: CircleAvatar(
                    backgroundColor: AppColorsConstant.primaryColor,
                    radius: MediaQuery.of(context).size.height*0.035,


child: Text('الصلاة' ,
style: TextStyle(
  fontSize: MediaQuery.of(context).size.height*0.02
),
),
                  ),
                ),
                const ItemOfBottom(
                  img: ImageConstant.sebhaIcon,
                  title: 'الأذكار',
                  index: 3,
                ),
                const ItemOfBottom(

               img: ImageConstant.image,
                  index: 4,
                  title: 'المزيد',
                ),
               
              ],
            ),
          )
        );

  }
}

class ItemOfBottom extends StatelessWidget {
  const ItemOfBottom({Key? key, required this.title, required this.img, required this.index}) : super(key: key);
final String img ;
final String title;
final int index;

  @override
  Widget build(BuildContext context) {
    return    GestureDetector(
      onTap: ( ) {
        Provider.of<BottomNavProvider>(context,listen: false).changeIndex(index);
      } ,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        index==0?  Icon(Icons.home,
        color: index== Provider.of<BottomNavProvider>(context).currentIndex?
        AppColorsConstant.primaryColor : AppColorsConstant.grey,
        ) :

        index== 4? Icon(Icons.more_horiz,color:
        index== Provider.of<BottomNavProvider>(context).currentIndex?
        AppColorsConstant.primaryColor : AppColorsConstant.grey,) :ImageIcon(
          AssetImage(img),
            color:    index== Provider.of<BottomNavProvider>(context).currentIndex?
               AppColorsConstant.primaryColor : AppColorsConstant.grey
    ),
          Text(title ,
          style: TextStyle(
            color: index== Provider.of<BottomNavProvider>(context).currentIndex?
                AppColorsConstant.primaryColor : AppColorsConstant.grey

          ),
          )
        ],
      ),
    );
  }
}




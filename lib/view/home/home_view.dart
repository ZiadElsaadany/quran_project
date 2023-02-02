import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/view/home/custom_bottom_nav_bar.dart';


import '../../controller/providers/quran_provider.dart';
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
    return     Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: const [
              Expanded(child: HomeViewBody()),
              CustomBottomNavBar()
            ],
          ),
          floatingActionButton: const CustomFloatingActionButton(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,


        ),
      ),
    );
  }
}

  class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({Key? key}) : super(key: key);

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
        onPressed: (){ },
        child: Column(
          children: const [
SizedBox(height: 4,),
            Icon(Icons.add,),
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

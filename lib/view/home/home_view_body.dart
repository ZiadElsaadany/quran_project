import 'package:flutter/material.dart';
import 'package:quran_project/view/home/custom_home_card_widget.dart';
import 'package:quran_project/view/home/quran_daily_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                      const CircleAvatar(),
                       const SizedBox(width: 15,),
                      Column(
                           children: const [
                             Text("مرحبا بك"),
                             Text("احمد علي"),
                           ],
                         )
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.date_range),
                         SizedBox(width: 5,),
                         Text('الاربعاء 7 شعبان 1443'),
                      ],
                    ),

                  ],
                ),
                Image.asset('asset/images/Screenshot (1).png',height: 100),


              ],
            ),
            Row(
              children: const [
                Icon(Icons.location_on_outlined),
                Text('مصر طنطا'),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),

          const QuranDailyWidget(),
            const SizedBox(height: 15,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.4,
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:3,
              ),
                itemCount: 6,
                itemBuilder: (ctx,index)=>const CustomHomeCardWidget()
              ),
            ), 
            Center(
              child: Image.asset('asset/images/Screenshot (1).png',
              width: 100,
              ),
            )

          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

import 'azkar_name_widget.dart';

class AzkarViewBody extends StatelessWidget {
  const AzkarViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.07,),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (ctx,index)=>  AzkarNameWidget(index: index,),
                itemCount: 7,
              ),
            ),
            Image.asset('asset/images/Screenshot (1).png',height: 100,)
          ],
        ),
      ),
    );
  }
}
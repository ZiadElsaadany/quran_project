
import 'package:flutter/material.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/constant/images_constant.dart';
import 'package:quran_project/constant/size_constant.dart';
import 'package:quran_project/view/azkar/azkar_details_view.dart';
import '../../constant/azkar.dart';
import '../../models/zekr_model.dart';

class AzkarNameWidget extends StatelessWidget {
  const AzkarNameWidget({Key? key, required this.index}) : super(key: key);

  final int  index;

  @override
  Widget build(BuildContext context) {
    ZekrModel zekr = ZekrModel.c(index);
    return GestureDetector(
      onTap: ( ) {
Navigator.push(context, MaterialPageRoute(builder: (ctx) { return
AzkarDetailsView(title: zekr.title,index: index,);
}));
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.withOpacity(0.6) ),
        ),
        child: Row(
          children:  [
            ImageIcon(AssetImage(zekr.image, ),
            size: returnHeightMediaQuery(ctx: context, size: 0.05),
            color:azkarList[index]['color'] ?? AppColorsConstant.primaryColor
            ) ,
            const SizedBox(width: 10,),
            Text(zekr.title,
              style: TextStyle (
                fontWeight:FontWeight.bold, 
                fontSize: returnHeightMediaQuery(ctx: context, size: 0.021)
              ),
            ),
            const Spacer(),
            Icon(Icons.arrow_back_ios_rounded,

              size: 15,  textDirection: TextDirection.ltr,color: Colors.grey.withOpacity(0.6),)
          ],
        ),
      ),
    );
  }
}


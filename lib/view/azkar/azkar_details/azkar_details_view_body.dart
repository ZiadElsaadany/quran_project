import 'package:flutter/material.dart';
import 'package:quran_project/constant/images_constant.dart';
import 'package:quran_project/constant/size_constant.dart';
import 'package:quran_project/view/widgets/custom_elevated_button.dart';

import '../../../constant/azkar.dart';

class AzkarDetailsViewBody extends StatefulWidget {
  const AzkarDetailsViewBody({Key? key, required this.indexOfZekr}) : super(key: key);
  final int  indexOfZekr ; // what is the zekr

  @override
  State<AzkarDetailsViewBody> createState() => _AzkarDetailsViewBodyState();
}


class _AzkarDetailsViewBodyState extends State<AzkarDetailsViewBody> {
  int index= 0 ; // index of each zekr
  int finishZekr= 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(ImageConstant.itar,
                      height: returnHeightMediaQuery(ctx: context, size: 0.07),
                        width: returnWidthMediaQuery(ctx: context, size: 0.1),

                      ),
                      Text('${  azkarList[widget.indexOfZekr]['azkar1'].length}  '),
                    ],
                  ),
                   Text('عدد الأذكار',
                  style: TextStyle(
                    fontSize: returnHeightMediaQuery(ctx: context, size:0.03)
                  ),
                  )
                ],
              ),
              Text( ' انهيت $finishZekr') ,

            ],
          ),

          Text( azkarList[widget.indexOfZekr]['azkar1'][index]['adi1'] ?? '',

          ),
          Text( azkarList[widget.indexOfZekr]['azkar1'][index]['adi']??'') ,



 CustomElevatedButtonOfSebha
   (
     widget:  const Text('تكرار',style: TextStyle(color: Colors.white),

     ),
     horizontal: 0.1,
     vertical: 0.01,
     borderRadius: 0,

   onPressed: ( ) {

     fun();
   },
 ) ,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text( ' التكرار ${azkarList[widget.indexOfZekr]['azkar1'][index]['total']}  ') ,

            ],
          ),
        ],
      ),
    );
  }

  fun(){
    if( index <azkarList[widget.indexOfZekr]['azkar1'].length) {

      if(azkarList[widget.indexOfZekr]['azkar1'][index]['number'] ==  1 )
      {
        if(index < azkarList[widget.indexOfZekr]['azkar1'].length-1){
          index++;
        }

        if(finishZekr<azkarList[widget.indexOfZekr]['azkar1'].length ) { finishZekr++ ;}
        setState(() {});
      }


      else{
        azkarList[widget.indexOfZekr]['azkar1'][index]['number']-- ;
      }

    }
    setState(() {});
  }

}


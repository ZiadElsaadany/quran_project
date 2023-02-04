import 'package:flutter/material.dart';
import 'package:quran_project/constant/azkar.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

class AzkarDetailsView extends StatelessWidget {
  const AzkarDetailsView(
      {
        Key? key,
        required this.title,
        required this.index,
      }
      ) : super(key: key);
final String title;
final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title),
body:  AzkarDetailsViewBody(
indexOfZekr: index,
),
    );
  }
}
class AzkarDetailsViewBody extends StatefulWidget {
  const AzkarDetailsViewBody({Key? key, required this.indexOfZekr}) : super(key: key);
  final int  indexOfZekr ;

  @override
  State<AzkarDetailsViewBody> createState() => _AzkarDetailsViewBodyState();
}


class _AzkarDetailsViewBodyState extends State<AzkarDetailsViewBody> {
  int index= 0 ;
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
              Text( ' عدد الاذكار ${  azkarList[widget.indexOfZekr]['azkar1'].length}') ,
              Text( ' انهيت $finishZekr') ,

            ],
          ),

          Text( azkarList[widget.indexOfZekr]['azkar1'][index]['adi1'] ?? '',

          ),
          Text( azkarList[widget.indexOfZekr]['azkar1'][index]['adi']??'') ,



          Container(
            decoration: const BoxDecoration(
              color: Colors.blue
            ),
            child: TextButton(

              child: Text('تكرار',style: TextStyle(color: Colors.white),

              ),
              onPressed: ( ) {
                debugPrint ('finish = $finishZekr');
                if(azkarList[widget.indexOfZekr]['azkar1'][index]['number']> 0  ) {
                  azkarList[widget.indexOfZekr]['azkar1'][index]['number']-- ;
                }
               if(index<azkarList[widget.indexOfZekr]['azkar1'].length  &&  azkarList[widget.indexOfZekr]['azkar1'][index]['number']==0
               && finishZekr >= azkarList[widget.indexOfZekr]['azkar1'].length
               ){
                 finishZekr ++;
                 if(index<azkarList[widget.indexOfZekr]['azkar1'].length-1) {
                   index++;
                 }
               }
               if(finishZekr >= azkarList[widget.indexOfZekr]['azkar1'].length ){
                 return ;
               }
                setState(() {});
              },

            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text( ' التكرار ${  azkarList[widget.indexOfZekr]['azkar1'][index]['number']}') ,

            ],
          ),
        ],
      ),
    );
  }
}


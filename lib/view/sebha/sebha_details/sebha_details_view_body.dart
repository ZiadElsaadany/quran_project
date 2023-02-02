import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/arabic_number_converter.dart';
import 'package:quran_project/view/sebha/sebha_details/row_of_update_and_add.dart';

import '../../../constant/images_constant.dart';
import '../../../controller/providers/sebha_provider.dart';
import 'custom_elevated_button.dart';

class SebhaViewDetailsBody extends StatelessWidget {
  const SebhaViewDetailsBody({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width*0.03,
          vertical: MediaQuery.of(context).size.height*0.05,

        ),
        child: Consumer<SebhaProvider>(
            builder: (context,provider,_) {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RowOfUpdateAndAdd(index: index),
                    SizedBox(
                      height:  MediaQuery.of(context).size.height*0.06,
                    ),
                    Text(
                      index ==0? 'سبحان الله' :
                      index==1? 'الله أكبر' :

                      index==2? 'لا اله الا الله':
                      index==3? 'لا حول ولا قوة الا بالله':
                      index==4? 'بعد الصلاة ' :
                      'تسابيح',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24
                      ),
                    ),
                    SizedBox(
                      height:  MediaQuery.of(context).size.height*0.06,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(ImageConstant.outlineOfSebha1,
                          height: MediaQuery.of(context).size.height*0.2,
                        ),
                        Image.asset(ImageConstant.outlineOfSebha2,
                          height: MediaQuery.of(context).size.height*0.18,
                        ),

                        Text(provider.countersOfSebha[index].toArabicNumbers,
                          textAlign: TextAlign.center,
                          style: TextStyle(

                              fontSize: MediaQuery.of(context).size.height*0.055
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height:  MediaQuery.of(context).size.height*0.17,
                    ),
                    CustomElevatedButtonOfSebha(
                      onPressed: ( ) {
                        provider.plusCounter(index: index);
                      } ,
                    ),
                    SizedBox(
                      height:  MediaQuery.of(context).size.height*0.07,
                    ),


                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}

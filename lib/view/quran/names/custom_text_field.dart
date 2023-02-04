
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/color_constant.dart';

import '../../../controller/providers/quran_provider.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom ,
      ),
      child:   TextField(
        cursorColor: AppColorsConstant.primaryColor,

        onChanged: (value) {
          Provider.of<KoranProvider>(context, listen: false)
              .getNameOfKoran(word: value);
        },

        decoration: InputDecoration(
contentPadding: EdgeInsets.all(MediaQuery.of(context).size.height*0.014),

            prefixIcon: const Icon(Icons.search,color: AppColorsConstant.primaryColor,),

            hintText: 'ابحث عن الصورة الذي تريدها',

            border: OutlineInputBorder(

                borderSide: const BorderSide(

                  color: Colors.grey,

                ),

                borderRadius: BorderRadius.circular(10

                )

            ),

            enabledBorder:OutlineInputBorder(

                borderSide: const BorderSide(

                    color: Colors.grey

                ),

                borderRadius: BorderRadius.circular(10

                )

            ),

            focusedBorder: OutlineInputBorder(

                borderSide: const BorderSide(

                    color: Colors.grey

                ),

                borderRadius: BorderRadius.circular(10)

            )



        ),

      ),
    );
  }
}

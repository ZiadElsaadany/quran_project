import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child:   TextField(
        // onChanged: (value) {
        //   Provider.of<KoranProvider>(context, listen: false)
        //       .getNameOfKoran(word: value);
        // },

        decoration: InputDecoration(

            prefixIcon: const Icon(Icons.search),

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

                borderRadius: BorderRadius.circular(10

                )

            )



        ),

      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quran_project/view/quran/names/custom_list_view_names.dart';



class NamedQuranViewBody extends StatelessWidget {
  const NamedQuranViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children:  [
Padding(
  padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
  child:   TextField(

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
),
             SizedBox(height: MediaQuery.of(context).size.height*0.04,),
            const Expanded(child: CustomListView()),
          ],
        ),
      ),
    );
  }
}

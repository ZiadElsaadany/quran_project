import 'package:flutter/material.dart';
import 'package:quran_project/view/sebha/sebha_details_view.dart';
import 'package:quran_project/view/sebha/sebha_name_container.dart';

class SebhaViewBody extends StatelessWidget {
  const SebhaViewBody({Key? key}) : super(key: key);
final List<String> sebhaList =
  const  [
      'استغفار',
      'تكبير',
      'تهليل',
      'حوقلة',
      'بعد الصلاة',
    'تسابيح'
    ] ;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height*0.08,
          horizontal: MediaQuery.of(context).size.width*0.1
      ),
        itemBuilder: (ctx,index) {
          return  GestureDetector(
             onTap: () {
               Navigator.pushNamed(context, SebhaDetailsView.id ,
                   arguments: index
               );
             },
            child: SebhaNameContainer(
              txt: sebhaList[index],
            ),
          );
        },
      itemCount: sebhaList.length,
    );
  }
}


import 'package:flutter/material.dart';

class SebhaNameContainer extends StatelessWidget {
  const SebhaNameContainer({Key? key, required this.txt}) : super(key: key);
final String txt ;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        margin: EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height*0.01 ),
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height*0.02 ,
            vertical: MediaQuery.of(context).size.height*0.02 ,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.5))
        ),
        child: Row(
          children: [
            const Spacer(),
             Text(txt,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
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

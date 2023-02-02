
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/arabic_number_converter.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/constant/images_constant.dart';
import 'package:quran_project/controller/providers/sebha_provider.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

class SebhaDetailsView extends StatelessWidget {
  const SebhaDetailsView({Key? key}) : super(key: key);
  static const String id ='sebha details view';
  @override
  Widget build(BuildContext context) {
    int args =ModalRoute.of(context)!.settings.arguments as int  ;
    return Scaffold(
      appBar: customAppBar(context,
          args==0 ? 'الاستغفار' :
          args == 1? 'التكبير':
          args==2 ? 'التهليل'   :
          args== 3? 'الحوقلة'    :
          args ==4? 'بعد الصلاة'    :
              'تسابيح'
      ),
      body: SebhaViewDetailsBody(index: args),
    );
  }
}
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
            vertical: MediaQuery.of(context).size.height*0.03,

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
                  style: TextStyle(
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
                    height:  MediaQuery.of(context).size.height*0.17,
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
class RowOfUpdateAndAdd extends StatelessWidget {
  const RowOfUpdateAndAdd({Key? key, required this.index}) : super(key: key);
final int index ;
  @override
  Widget build(BuildContext context) {
    return Consumer<SebhaProvider>(
      builder: (context,provider,_) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconButton(icon: Icons.add),
            CustomIconButton(icon: Icons.restart_alt,

            onPressed: ( ){
              provider.restartCounter(index: index);
            }),


          ],
        );
      }
    );
  }
}
class CustomIconButton extends StatelessWidget {
  const CustomIconButton({Key? key, required this.icon, this.onPressed}) : super(key: key);
final IconData icon ;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColorsConstant.grey.withOpacity(0.5),
      child: IconButton(
        onPressed: onPressed ,
        icon: Icon(icon,color: AppColorsConstant.primaryColor,),
      ),
    );
  }
}
class CustomElevatedButtonOfSebha extends StatelessWidget {
  const CustomElevatedButtonOfSebha({Key? key, this.onPressed}) : super(key: key);
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width*0.35,
            vertical: MediaQuery.of(context).size.height*0.012,

        ),

        ),
        backgroundColor: MaterialStateProperty.all(AppColorsConstant.primaryColor), 
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(20))
        )),
        onPressed:onPressed ,
        child: Image.asset(ImageConstant.fingerImage,
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height*0.06 ,
          width: MediaQuery.of(context).size.width*0.06,
        ),
    );
  }
}




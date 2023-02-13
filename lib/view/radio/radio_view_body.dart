import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/constant/size_constant.dart';
import 'package:quran_project/view/radio/radoi_done.dart';
import 'package:quran_project/view/radio/row_play_pause.dart';

import '../../constant/images_constant.dart';
import '../../controller/apis/radio.dart';
import '../../models/radio/RadioModel.dart';

class RadioViewBody extends StatefulWidget {
  const RadioViewBody({Key? key}) : super(key: key);

  @override
  State<RadioViewBody> createState() => _RadioViewBodyState();
}

class _RadioViewBodyState extends State<RadioViewBody> {
 late AudioPlayer audioPlayer ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero,(){
      audioPlayer = AudioPlayer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return   FutureBuilder<RadioModel>(

        future:Provider.of<RadioApi>(context,listen: false).getRadio(),
        builder: (context,snapShot){


            if(snapShot.hasData)   {
              return Column(
                children: [
                  SizedBox(
                    height: returnHeightMediaQuery(ctx: context, size: 0.07),
                  ),
                  const Expanded(
                      flex: 2,
                      child: RadioHasDataView()),
                  Expanded(
                    child: Image.asset(ImageConstant.radioPlayImage,
                      color: Provider.of<RadioApi>(context).playImage?Colors.deepPurple:
                      AppColorsConstant.primaryColor,
                      width: MediaQuery.of(context).size.width*0.8,


                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ListView.builder(
                      physics: const PageScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx,index) {
                        return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: RowIconAndLabelRadio(
                              url: snapShot.data!.radios![index].url??"",
                              item:snapShot.data!.radios![index],
                              audioPlayer: audioPlayer,
                            ));
                      }  ,
                      itemCount:snapShot.data!.radios!.length,
                    ),
                  ),

                ],
              );
            }
            else if(snapShot.hasError){
              return   Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: returnHeightMediaQuery(ctx: context, size: 0.35),
                    child: const RadioHasDataView(),
                  ),
                  GestureDetector(
                      onTap: ( )  {
                        Provider.of<RadioApi>(context,listen: false).getRadio();
                      } ,
                      child:  Text('لا يوجد اتصال بالانترنت',
                      style: TextStyle(
                        fontSize: returnHeightMediaQuery(ctx: context, size: 0.03),
                        color: AppColorsConstant.primaryColor
                      ),
                      ))
                ],
              );
            }
            else{
              return const Center(child: CircularProgressIndicator(color: AppColorsConstant.primaryColor,),
              );
            }
          }


    )
    ;
  }
}

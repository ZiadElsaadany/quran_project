

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/size_constant.dart';
import 'package:quran_project/view/salah_timing/widgets/news_salah.dart';
import 'package:quran_project/view/salah_timing/widgets/time_container.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

import '../../constant/color_constant.dart';
import '../../constant/images_constant.dart';
import '../../controller/apis/api_salahTiming.dart';


class SalahTimingScreen extends StatefulWidget {
  const SalahTimingScreen({Key? key}) : super(key: key);
static const String id= 'salahTime';

  @override
  State<SalahTimingScreen> createState() => _SalahTimingScreenState();
}

class _SalahTimingScreenState extends State<SalahTimingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero , ( ) async {
      Provider.of<PrayingApi>(context, listen: false).getTimeApi( cityName: 'tanta' ,country: 'Egypt') ;
    } )  ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'مواعيد الصلاة'),
      body: Consumer<PrayingApi>(
          builder: (context,provider,_) {
            return          provider.isGetTime ? const Center(child: CircularProgressIndicator(
              color: AppColorsConstant.primaryColor,
            )): Padding(
              padding: const EdgeInsets.all(8.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ListView (
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const NewsSalah(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.02,
                    ),
                    const Text('المواعيد في مدينة طنطا',
                      textAlign: TextAlign.center,
                    ),
                    Text(' ${provider.jsonRes['data']['date']['hijri']['weekday']['ar']} ${provider.jsonRes['data']['date']['readable']}',

                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: TextStyle(

                          color: AppColorsConstant.black.withOpacity(0.5)
                      ),
                    ),
                    TimeContainer(
                      img:ImageConstant.sabahIcon ,
                      salahName: 'الفجر',
                      salahTime: provider.salahTime?.fajr ?? '' ,
                    ),
                    TimeContainer(
                      img:ImageConstant.sabahIcon ,
                      salahName: 'الضهر',
                      salahTime:provider.salahTime?.dhuhr??'' ,
                    ),
                    TimeContainer(
                      img:ImageConstant.sabahIcon ,
                      salahName: 'العصر',
                      salahTime: provider.salahTime?.asr??'' ,
                    ),
                    TimeContainer(
                      img:ImageConstant.sabahIcon ,
                      salahName: 'المغرب',
                      salahTime: provider.salahTime?.maghrib??''  ,
                    ),
                    TimeContainer(
                      img:ImageConstant.sabahIcon ,
                      salahName: 'العشاء',
                      salahTime: provider.salahTime?.isha??''  ,
                    ),
                    SizedBox(
                      height: returnHeightMediaQuery(ctx: context, size: 0.03),
                    ),

                    Center(
                      child: Image.asset(ImageConstant.image,
                        width: MediaQuery.of(context).size.width*0.28,
                        height: MediaQuery.of(context).size.height*0.1,
                      ),
                    )



                  ],
                ),
              ),

            );
          }
      ),
    );
  }
}

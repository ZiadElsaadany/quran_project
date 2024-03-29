import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/constant/hive_const.dart';
import 'package:quran_project/controller/apis/radio.dart';
import 'package:quran_project/controller/providers/azkar_provider.dart';
import 'package:quran_project/controller/providers/bottom_nav_provider.dart';
import 'package:quran_project/controller/providers/doaa_provider.dart';
import 'package:quran_project/controller/providers/sebha_provider.dart';
import 'package:quran_project/view/ahadeth/ahadeth_view.dart';
import 'package:quran_project/view/azkar/azkar_view.dart';
import 'package:quran_project/view/doaa/doaa_view.dart';
import 'package:quran_project/view/doaa_favourites/favourtie_view.dart';
import 'package:quran_project/view/home/home_view.dart';
import 'package:quran_project/view/names_of_allah/names_of_allah_view.dart';
import 'package:quran_project/view/quran/names/names_quran_view.dart';
import 'package:quran_project/view/radio/radio_view.dart';
import 'package:quran_project/view/salah_timing/salah_timing_view.dart';
import 'package:quran_project/view/sebha/sebha_details/sebha_details_view.dart';
import 'package:quran_project/view/sebha/sebha_view.dart';
import 'package:quran_project/view/zakah/zakah_view.dart';
import 'controller/apis/api_salahTiming.dart';
import 'controller/providers/quran_provider.dart';
import 'models/doaa_added_model_hive/doaa_added_model_hive.dart';
void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(DoaaAddedModelAdapter());

  await Hive.openBox<DoaaAddedModel>(HiveConst.doaaAddedBox);
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (ctx) => KoranProvider()),
            ChangeNotifierProvider(create: (ctx) => BottomNavProvider()),
            ChangeNotifierProvider(create: (ctx) => SebhaProvider()),
            ChangeNotifierProvider(create: (ctx) => PrayingApi()),
            ChangeNotifierProvider(create: (ctx) => DoaaProvider()),
            ChangeNotifierProvider(create: (ctx) => AzkarProvider()),
            ChangeNotifierProvider(create: (ctx) => RadioApi()),
          ],
          child: const QuranApp())
  ) ;

  //  initializeDateFormatting('ar_SA',null).then((_) {
  //
  // } ) ;
}

class QuranApp extends StatelessWidget {
  const QuranApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cairo',
        primaryColor: AppColorsConstant.primaryColor,
          scrollbarTheme: const ScrollbarThemeData().copyWith(
            thumbColor: MaterialStateProperty.all(AppColorsConstant.primaryColor),

          ),
          brightness: Brightness.light,

        appBarTheme:  const AppBarTheme(
          color: AppColorsConstant.primaryColor,
        )
      ),
      home: const HomeView(),
      initialRoute: HomeView.id,
      routes: {
        HomeView.id :        ( ctx )=> const HomeView(),
        NamesQuranView.id:   ( ctx )=> const NamesQuranView(),
        ZakahView.id :       ( ctx )=> const ZakahView(),
        SebhaView.id:        ( ctx )=> const SebhaView(),
        AzkarView.id :       ( ctx )=> const AzkarView(),
        SebhaDetailsView.id: ( ctx )=> const SebhaDetailsView(),
        NamesOfAllahView.id: ( ctx )=> const NamesOfAllahView(),
        DoaaView.id:         ( ctx )=> const DoaaView(),
        AhadethView.id:      ( ctx )=> const AhadethView(),
        SalahTimingScreen.id:( ctx )=> const SalahTimingScreen(),
        FavouriteView.id:    ( ctx )=> const FavouriteView(),
        RadioView.id: (ctx)=> const RadioView(),
        // TodoView.id:(ctx)=>const TodoView()
      },
    );
  }
}

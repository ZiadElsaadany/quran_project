import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/color_constant.dart';
import 'package:quran_project/controller/providers/bottom_nav_provider.dart';
import 'package:quran_project/controller/providers/doaa_provider.dart';
import 'package:quran_project/controller/providers/sebha_provider.dart';
import 'package:quran_project/view/azkar/azkar_view.dart';
import 'package:quran_project/view/doaa/doaa_view.dart';
import 'package:quran_project/view/home/home_view.dart';
import 'package:quran_project/view/names_of_allah/names_of_allah_view.dart';
import 'package:quran_project/view/quran/names/names_quran_view.dart';
import 'package:quran_project/view/sebha/sebha_details/sebha_details_view.dart';
import 'package:quran_project/view/sebha/sebha_view.dart';
import 'package:quran_project/view/zakah/zakah_view.dart';

import 'controller/apis/api_salahTiming.dart';
import 'controller/providers/quran_provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx)=>KoranProvider()),
        ChangeNotifierProvider(create: (ctx)=>BottomNavProvider()),
        ChangeNotifierProvider(create: (ctx)=>SebhaProvider()),
        ChangeNotifierProvider(create: (ctx)=>PrayingApi()),
        ChangeNotifierProvider(create: (ctx)=>DoaaProvider()),
      ],
      child: const QuranApp()));
}

class QuranApp extends StatelessWidget {
  const QuranApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo',
        primaryColor: AppColorsConstant.primaryColor,
          brightness: Brightness.light,
        appBarTheme:  const AppBarTheme(
          color: AppColorsConstant.primaryColor,
        )
      ),
      home: const HomeView(),
      initialRoute: HomeView.id,
      routes: {
        HomeView.id :(ctx)=>const HomeView(),
        NamesQuranView.id:(ctx)=>const NamesQuranView(),
        ZakahView.id : (  ctx ) => const ZakahView(),
        SebhaView.id:(cts) =>const SebhaView(),
        AzkarView.id : (  ctx ) => const AzkarView(),
        SebhaDetailsView.id : (  ctx ) => const SebhaDetailsView(),
        NamesOfAllahView.id:(ctx)=> const NamesOfAllahView(),
        DoaaView.id:(ctx)=>const DoaaView()
      },
    );
  }
}

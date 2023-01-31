import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/view/home/home_view.dart';
import 'package:quran_project/view/quran/names/names_quran_view.dart';

import 'controller/providers/quran_provider.dart';

void main() {
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget {
  const QuranApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx)=>KoranProvider(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Cairo'
        ),
        home: const HomeView(),
        initialRoute: HomeView.id,
        routes: {
          HomeView.id :(ctx)=>const HomeView(),
          NamesQuranView.id:(ctx)=>const NamesQuranView()
        },
      ),
    );
  }
}

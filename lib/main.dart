import 'package:flutter/material.dart';
import 'package:quran_project/view/home_view.dart';

void main() {
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget {
  const QuranApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      initialRoute: HomeView.id,
      routes: {
        HomeView.id :(ctx)=>const HomeView()
      },
    );
  }
}

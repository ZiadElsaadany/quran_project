import 'package:flutter/material.dart';

import 'home_view_body.dart';

class HomeView extends StatelessWidget {
  static  const  String id ='HOME View ';
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: HomeViewBody()
        ),
      ),
    );
  }
}

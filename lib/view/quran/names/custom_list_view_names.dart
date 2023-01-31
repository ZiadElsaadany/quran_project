import 'package:flutter/material.dart';

import '../../../constant/sowar.dart';
import '../../../models/name_surah_model.dart';
import '../surah/surah_view.dart';
import 'name_widget.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (ctx, index) =>
      const SizedBox(
        height: 8,
      ),
      physics: const BouncingScrollPhysics(),
      itemCount: 114,
      itemBuilder: (ctx, index) => GestureDetector(
        onTap: () {
           final SurahNameModel model = SurahNameModel.cons(index);
          Navigator.push(context,
              MaterialPageRoute(builder: (ctx) {
                return SurahView(indx: index,title:model.surahName, );
              }));
        },
        child: SurahNameDisplay(
          modelOfSurah: SurahNameModel.cons(index),
        ),
      ),
    );
  }
}

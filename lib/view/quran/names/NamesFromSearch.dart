import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/models/name_surah_model.dart';


import '../../../controller/providers/quran_provider.dart';
import '../surah/surah_view.dart';
import 'name_widget.dart';


class NamesFromSearch extends StatelessWidget {
  const NamesFromSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<KoranProvider>(
        builder: (context, provider, _) {
          return ListView.separated(
            separatorBuilder: (ctx, index) =>
            const SizedBox(
              height: 8,
            ),
            physics: const BouncingScrollPhysics(),
            itemCount: provider.lst.length,
            itemBuilder: (ctx, index) => GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) {
                      return SurahView(indx:
                      provider.lst[index]['verses'][0]['surah_number']-1, title:  provider.lst[index]['name'],
                      );
                    }));
              },
              child: SurahNameDisplay(
                modelOfSurah: SurahNameModel(
                index: provider.lst[index]['verses'][0]['surah_number'],
                num: provider.lst[index]['ayat'],
                place: provider.lst[index]['place'],
                surahName: provider.lst[index]['name'],
              ) ) ,
            ),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:quran_project/models/name_surah_model.dart';
import 'package:quran_project/view/quran/names/names_quran_view_body.dart';

import '../../../constant/sowar.dart';
import 'name_widget.dart';

class NamesQuranView extends StatelessWidget {
  const NamesQuranView({Key? key}) : super(key: key);
static const String id = 'Names Quran';
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('القران الكريم'),
          centerTitle: true,
        ),
        body: const NamedQuranViewBody()
      ),
    );
  }
}

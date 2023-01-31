import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/view/quran/names/names_quran_view_body.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

import '../../../controller/providers/quran_provider.dart';


class NamesQuranView extends StatelessWidget {
  const NamesQuranView({Key? key}) : super(key: key);
static const String id = 'Names Quran';
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
    appBar: customAppBar(context, 'القران الكريم'),
        body: const NamedQuranViewBody()
      ),
    );
  }
}

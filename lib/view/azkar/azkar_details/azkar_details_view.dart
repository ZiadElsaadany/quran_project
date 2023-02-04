import 'package:flutter/material.dart';
import 'package:quran_project/constant/azkar.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

import 'azkar_details_view_body.dart';

class AzkarDetailsView extends StatelessWidget {
  const AzkarDetailsView(
      {
        Key? key,
        required this.title,
        required this.index,
      }
      ) : super(key: key);
final String title;
final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title),
body:  AzkarDetailsViewBody(
indexOfZekr: index,
),
    );
  }
}

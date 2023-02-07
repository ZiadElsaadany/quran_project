import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/constant/size_constant.dart';

import '../../controller/providers/doaa_provider.dart';
import 'doaa_card.dart';

class CustomDismissibleWidget extends StatelessWidget {
  const CustomDismissibleWidget(
      {Key? key,
        required this.index,
        required this.title,
        required this.content})
      : super(key: key);

  final int index;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Consumer<DoaaProvider>(builder: (context, provider, _) {
      return Dismissible(
        key: UniqueKey(),
        onDismissed: (value) {
          if (value == DismissDirection.endToStart) {
            provider.doaaAdded[index].delete();
            provider.readDoaaFromHive();
          }
        },
        secondaryBackground: Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.red
          ),
          child:  Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Icon(
              Icons.delete,
              color: Colors.white,
              size: returnHeightMediaQuery(ctx: context, size: 0.05),
            ),
          ),
        ) ,
        background:Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        child: DoaaCard(
          checkAhadethOrDoaa: true,
          title: title,
          content: content,
        ),
        confirmDismiss: (d) async {
          if (d == DismissDirection.endToStart) {
            return true;
          }
          return false;
        },
      );
    });
  }
}

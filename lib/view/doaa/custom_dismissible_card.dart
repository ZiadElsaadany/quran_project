import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

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
        child: DoaaCard(
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

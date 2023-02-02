import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controller/providers/sebha_provider.dart';
import 'custom_icon_button.dart';

class RowOfUpdateAndAdd extends StatelessWidget {
  const RowOfUpdateAndAdd({Key? key, required this.index}) : super(key: key);
  final int index ;
  @override
  Widget build(BuildContext context) {
    return Consumer<SebhaProvider>(
        builder: (context,provider,_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomIconButton(icon: Icons.add),
              CustomIconButton(icon: Icons.restart_alt,

                  onPressed: ( ){
                    provider.restartCounter(index: index);
                  }),


            ],
          );
        }
    );
  }
}

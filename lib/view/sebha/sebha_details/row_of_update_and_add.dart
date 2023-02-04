import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/view/sebha/add_sebha.dart';

import '../../../controller/providers/sebha_provider.dart';
import 'custom_icon_button.dart';

class RowOfUpdateAndAdd extends StatefulWidget {
  const RowOfUpdateAndAdd({Key? key, required this.index}) : super(key: key);
  final int index ;

  @override
  State<RowOfUpdateAndAdd> createState() => _RowOfUpdateAndAddState();
}

class _RowOfUpdateAndAddState extends State<RowOfUpdateAndAdd> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SebhaProvider>(
        builder: (context,provider,_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               CustomIconButton(icon: Icons.add,
              onPressed: ( ) {
                AddSebha.showDialogFunction(context,
                );
              },
              ),
              CustomIconButton(icon: Icons.restart_alt,
                  onPressed: ( ){
                    provider.restartCounter(index: widget.index);

                  }),


            ],
          );
        }
    );
  }
}

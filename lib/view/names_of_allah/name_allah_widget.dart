import 'package:flutter/material.dart';

import '../../constant/size_constant.dart';

class ItemOfAsmaaAllah extends StatelessWidget {
  const ItemOfAsmaaAllah({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(returnHeightMediaQuery(ctx: context, size: 0.01)),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              returnFontSizeMediaQuery(ctx: context, size: 0.01)
          ),
          border: Border.all(color: Colors.grey)
      ),
      child: Text(name,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: returnHeightMediaQuery(ctx: context
                , size: 0.028)
        ),
      ),
    );
  }
}

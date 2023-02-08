import 'package:flutter/material.dart';

class ReturnBasmala extends StatelessWidget {
  const ReturnBasmala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SelectableText(
        'بِسْمِ اللَّـهِ الرَّحْمَـٰنِ الرَّحِيمِ ',

          style: TextStyle(
        fontFamily: 'quran',
              fontSize: 22,
              color: Colors.grey
          ),
          textDirection: TextDirection.rtl,
      ),
    );
  }
}


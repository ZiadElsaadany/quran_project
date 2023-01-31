import 'package:flutter/material.dart';

class CustomHomeCardWidget extends StatelessWidget {
  const CustomHomeCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(width: 0.1)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 2,
              child: Image.asset('asset/images/allah.jpg')),
          Expanded(
              flex: 1,
              child: const Text('القران')),
        ],
      ),
    );
  }
}

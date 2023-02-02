import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({Key? key, required this.icon, required this.title}) : super(key: key);
  final IconData icon ;
  final String title;
  @override
  Widget build(BuildContext context) {
    return    Column(
      children: [
        Icon(icon,

          color: Colors.white,),

        Text(title),
      ],
    );
  }
}
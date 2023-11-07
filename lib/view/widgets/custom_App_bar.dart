

  import 'package:flutter/material.dart';
import 'package:quran_project/animation/fade_animation.dart';

PreferredSizeWidget customAppBar(BuildContext context,  String txt ) {

    return     AppBar(
    title:  Text(txt),
    centerTitle: true,
    );
  }

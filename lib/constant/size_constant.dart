import 'package:flutter/material.dart';

returnFontSizeMediaQuery( {required BuildContext ctx,required double size}){
  return MediaQuery.of(ctx).size.height*size ;
}

returnHeightMediaQuery( {required BuildContext ctx,required double size}){
  return MediaQuery.of(ctx).size.height*size ;
}
returnWidthMediaQuery( {required BuildContext ctx,required double size}){
  return MediaQuery.of(ctx).size.width*size ;
}




import 'package:flutter/material.dart';
import '../../constant/color_constant.dart';
import '../sebha/add_sebha.dart';
import 'doaa_dialog_form.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor:AppColorsConstant.primaryColor,
      onPressed: (){
AddSebha.showDialogFunction(
    
    context,  const DialogOfDoaaForm() )   ;

      } ,
      child: const Icon(Icons.add),
    );
  }
}


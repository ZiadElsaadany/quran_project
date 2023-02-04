
import 'package:flutter/material.dart';
import 'package:quran_project/constant/color_constant.dart';


class CustomTextFiled extends StatelessWidget {
    CustomTextFiled(
      {Key? key, required this.hintText, this.onChanged,
        this.icon=const SizedBox(), required this.contentPadding,
        this.validator,
      this.autovalidateMode = AutovalidateMode.disabled
      }) : super(key: key);
final  String hintText;
final void Function(String)? onChanged;
final Widget icon ;
final double contentPadding;
final String? Function(String?)? validator;
AutovalidateMode  ? autovalidateMode ;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        validator:validator,
        cursorColor: AppColorsConstant.primaryColor,
        autovalidateMode: autovalidateMode,
        onChanged: onChanged,
        decoration: InputDecoration(
contentPadding: EdgeInsets.all(MediaQuery.of(context).size.height*contentPadding),
            prefixIcon: icon,
            hintText: hintText,

            border: OutlineInputBorder(

                borderSide: const BorderSide(

                  color: Colors.grey,

                ),

                borderRadius: BorderRadius.circular(8

                )

            ),

            enabledBorder:OutlineInputBorder(

                borderSide: const BorderSide(

                    color: Colors.grey

                ),

                borderRadius: BorderRadius.circular(10

                )

            ),

            focusedBorder: OutlineInputBorder(

                borderSide: const BorderSide(

                    color: Colors.grey

                ),

                borderRadius: BorderRadius.circular(10)

            )



        ),

      ),
    );
  }
}

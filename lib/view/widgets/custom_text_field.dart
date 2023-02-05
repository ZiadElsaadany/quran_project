
import 'package:flutter/material.dart';
import 'package:quran_project/constant/color_constant.dart';


class CustomTextFiled extends StatelessWidget {
    CustomTextFiled(
      {Key? key, required this.hintText, this.onChanged,
        this.icon=const SizedBox(), required this.contentPadding,
        this.validator,
      this.autovalidateMode = AutovalidateMode.disabled, required this.mxLines
      }) : super(key: key);
final  String hintText;
final void Function(String)? onChanged;
final Widget icon ;
final double contentPadding;
final String? Function(String?)? validator;
AutovalidateMode  ? autovalidateMode ;
final int mxLines;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(

        maxLines: mxLines,
        validator:validator,
        cursorColor: AppColorsConstant.primaryColor,
        autovalidateMode: autovalidateMode,
        onChanged: onChanged,
        decoration: InputDecoration(
contentPadding: EdgeInsets.only(
    top: MediaQuery.of(context).size.height*contentPadding),
            prefixIcon: icon,
            hintText: hintText,
            hintTextDirection: TextDirection.rtl,
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

                    color: AppColorsConstant.primaryColor

                ),

                borderRadius: BorderRadius.circular(10)

            ),




        ),

      ),
    );
  }
}

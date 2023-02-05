
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran_project/constant/size_constant.dart';
import 'package:quran_project/view/widgets/custom_elevated_button.dart';
import 'package:quran_project/view/widgets/custom_text_field.dart';

import '../../constant/color_constant.dart';
import '../sebha/add_sebha.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor:AppColorsConstant.primaryColor,
      onPressed: (){
AddSebha.showDialogFunction(
    
    context,const DialogOfDoaaForm(

) )   ;

      } ,
      child: const Icon(Icons.add),
    );
  }
}



class DialogOfDoaaForm extends StatefulWidget {
   const DialogOfDoaaForm({Key? key}) : super(key: key);

  @override
  State<DialogOfDoaaForm> createState() => _DialogOfDoaaFormState();
}

class _DialogOfDoaaFormState extends State<DialogOfDoaaForm> {
 final  GlobalKey<FormState> formKey = GlobalKey<FormState>();
 AutovalidateMode autoValidateMode1 = AutovalidateMode.disabled;
 AutovalidateMode autoValidateMode2 = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
           Text('اضافة الدعاء الجديد' ,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: returnFontSizeMediaQuery(ctx: context, size: 0.028)
            ),

          ),
          SizedBox(
            height: returnHeightMediaQuery(ctx: context, size: 0.02),
          ),
          CustomTextFiled(

            mxLines: 1,
            validator: ( value) {
              if(value==null || value.isEmpty) {
                return 'ادخل اسم الدعاء';
              }else{
                return null;
              }

            },
              hintText: 'اسم الدعاء..',
            contentPadding: 0.002,
            autovalidateMode: autoValidateMode1,

          ),
          SizedBox(
            height: returnHeightMediaQuery(ctx: context, size: 0.02),
          ),
          CustomTextFiled(

            mxLines: 3,
            validator: ( value) {
              if(value==null || value.isEmpty) {
                return 'ادخل كلمات الدعاء';
              }else{
                return null;
              }

            },
            autovalidateMode: autoValidateMode2,
              hintText: 'كلمات الدعاء..',
            contentPadding: 0.04,


          ),
          SizedBox(
            height: returnHeightMediaQuery(ctx: context, size: 0.02),
          ),
          CustomElevatedButtonOfSebha(
              widget: const Text('اضافة',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),
              ),
              horizontal: 0.08,
              vertical: 0.013,
              borderRadius: 5,
            onPressed: () {
                if(formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                }else{

                  autoValidateMode1 = AutovalidateMode.always;
                  autoValidateMode2 =AutovalidateMode.always;
                  setState(() {});
                }


            } ,
          )
        ],
      ),
      
    );
  }
}



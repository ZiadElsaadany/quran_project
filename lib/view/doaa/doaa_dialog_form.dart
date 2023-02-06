import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/controller/providers/doaa_provider.dart';
import 'package:quran_project/models/doaa_added_model_hive/doaa_added_model_hive.dart';
import '../../constant/size_constant.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_field.dart';
class DialogOfDoaaForm extends StatefulWidget {
  const DialogOfDoaaForm({Key? key}) : super(key: key);

  @override
  State<DialogOfDoaaForm> createState() => _DialogOfDoaaFormState();
}

class _DialogOfDoaaFormState extends State<DialogOfDoaaForm> {
  final  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode1 = AutovalidateMode.disabled;
  AutovalidateMode autoValidateMode2 = AutovalidateMode.disabled;
   DoaaAddedModel model = DoaaAddedModel();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Consumer<DoaaProvider>(
        builder: (context,provider,_) {
          return Column(
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
                onChanged: ( value) {

                  model.doaaName = value;
                },
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
                onChanged: (value)  {
                    model.doaaContent = value;
                },

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
                    provider.addInDoaaAddedList(model);

                    Navigator.pop(context);

                  }else{

                    autoValidateMode1 = AutovalidateMode.always;
                    autoValidateMode2 =AutovalidateMode.always;
                    setState(() {});
                  }


                } ,
              )
            ],
          );
        }
      ),

    );
  }
}



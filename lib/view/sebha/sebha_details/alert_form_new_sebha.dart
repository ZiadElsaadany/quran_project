
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/view/sebha/sebha_details/sebha_details_view.dart';
import 'package:quran_project/view/sebha/sebha_details/sebha_details_view_body.dart';

import '../../../constant/size_constant.dart';
import '../../../controller/providers/sebha_provider.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_field.dart';

class AlertForm extends StatefulWidget {
  const AlertForm({Key? key}) : super(key: key);

  @override
  State<AlertForm> createState() => _AlertFormState();
}

class _AlertFormState extends State<AlertForm> {
  GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {

    return Form(
      key: keyForm,
      child: Consumer<SebhaProvider>(
        builder: (context,provider,_) {
          return Column(
            children: [
              CustomTextFiled(
                autovalidateMode: autoValidateMode,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'يحب ادخال السبحة';
                  } else {
                    return null;
                  }
                },
                contentPadding: 0.03,
                hintText: 'اكتب التسبيح',
                onChanged: (value) {
                  provider.newSebha = value;
                },
              ),
              SizedBox(
                height: returnHeightMediaQuery(ctx: context, size: 0.025),
              ),
              CustomElevatedButtonOfSebha(
                borderRadius: 5,
                vertical: 0.01,
                horizontal: 0.01,
                widget: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                  child: Text(
                    'اضافة',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  if (keyForm.currentState!.validate()) {
                    keyForm.currentState!.save();
                    Navigator.pop(context);
                    provider.changeArgs(6);
                    Navigator.pushNamed(context,
                        SebhaDetailsView.id);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              )
            ],
          );
        }
      ),
    );
  }
}

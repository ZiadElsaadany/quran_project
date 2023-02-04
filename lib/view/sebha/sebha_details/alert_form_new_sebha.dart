
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      child: Column(
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
              Provider.of<SebhaProvider>(context, listen: false).newSebha =
                  value;
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
              } else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}

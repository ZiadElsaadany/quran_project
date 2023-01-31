import 'package:flutter/material.dart';

import '../../constant/color_constant.dart';
import '../../constant/images_constant.dart';

class ZakahViewBody extends StatelessWidget {
  const ZakahViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.08,
          vertical: MediaQuery.of(context).size.height*0.05),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('اختر نوع الزكاة:',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.05,
              ),
              Container(
                decoration: BoxDecoration (
                  color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),

                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.18,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration (
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10) ,
                              bottomRight: Radius.circular(10)
                          ),
                          color: AppColorsConstant.primaryColor ,

                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Image.asset(ImageConstant.money),
                        ),
                      ),
                    ) ,
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.04,
                    ),
              const  Text('الزكاة',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),

                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              Container(
                decoration: BoxDecoration (
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.18,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration (
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10) ,
                              bottomRight: Radius.circular(10)
                          ),
                          color: AppColorsConstant.primaryColor ,

                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Image.asset(ImageConstant.money),
                        ),
                      ),
                    ) ,
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.04,
                    ),
                    const  Text('الجنية المصري',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),

                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),

              Text('ادخل القيمة:'),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),

              Padding(
                padding:  EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom),
                child: TextFormField(
                  autocorrect: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'المبلغ بالجنية المصري',
                    border: OutlineInputBorder(

                    )
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),
              Text('قيمة الزكاة'),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),
              Text('0.00ج م'),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.06,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: MediaQuery.of(context).size.width*0.6,
                child: Text('احسب',
                style: TextStyle(
                  color: Colors.white
                ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              )


            ],

          ),
        ),
      ),

    );
  }
}


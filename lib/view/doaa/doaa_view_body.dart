import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/animation/fade_animation.dart';
import 'package:quran_project/controller/providers/doaa_provider.dart';
import 'package:quran_project/view/doaa/toggle_widget.dart';

import '../../constant/images_constant.dart';
import '../../constant/size_constant.dart';
import 'custom_dismissible_card.dart';
import 'doaa_card.dart';
import 'empty_doaa.dart';

class DoaaViewBody extends StatefulWidget {
  const DoaaViewBody({Key? key}) : super(key: key);

  @override
  State<DoaaViewBody> createState() => _DoaaViewBodyState();
}

class _DoaaViewBodyState extends State<DoaaViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () async {
      Provider.of<DoaaProvider>(context, listen: false).readDoaaFromHive();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Consumer<DoaaProvider>(builder: (context, provider, _) {
        return SizedBox(
          width: double.infinity,
          child: FadeAnimation(
            1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: returnHeightMediaQuery(ctx: context, size: 0.05),
                ),
                const ToggleWidget(),
                SizedBox(
                  height: returnHeightMediaQuery(ctx: context, size: 0.03),
                ),
                Expanded(
                  child: provider.checkClick == false
                      ? provider.doaaAdded == [] || provider.doaaAdded.isEmpty
                          ? const EmptyDoaa()
                          : ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (ctx, index) {
                                return index == provider.doaaAdded.length - 1
                                    ? Column(
                                        children: [
                                          CustomDismissibleWidget(
                                              index: index,
                                              title: provider.doaaAdded[index]
                                                      .doaaName ??
                                                  '',
                                              content: provider.doaaAdded[index]
                                                      .doaaContent ??
                                                  ''),
                                          Image.asset(
                                            ImageConstant.image,
                                            height: returnHeightMediaQuery(
                                                ctx: context, size: 0.1),
                                          )
                                        ],
                                      )
                                    : CustomDismissibleWidget(
                                        index: index,
                                        title: provider
                                                .doaaAdded[index].doaaName ??
                                            '',
                                        content: provider
                                                .doaaAdded[index].doaaContent ??
                                            '');
                              },
                              itemCount: provider.doaaAdded.length,
                            )
                      : ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (ctx, index) {
                            return index == provider.doaa.length - 1
                                ? Column(
                                    children: [
                                      DoaaCard(
                                        title: provider.doaa[index]['name'],
                                        content: provider.doaa[index]['text'],
                                      ),
                                      Image.asset(
                                        ImageConstant.image,
                                        height: returnHeightMediaQuery(
                                            ctx: context, size: 0.1),
                                      )
                                    ],
                                  )
                                : DoaaCard(
                                    title: provider.doaa[index]['name'],
                                    content: provider.doaa[index]['text'],
                                  );
                          },
                          itemCount: provider.doaa.length,
                        ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}


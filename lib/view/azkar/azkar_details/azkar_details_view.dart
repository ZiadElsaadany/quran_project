import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_project/controller/providers/azkar_provider.dart';
import 'package:quran_project/view/widgets/custom_App_bar.dart';

import 'azkar_details_view_body.dart';

class AzkarDetailsView extends StatefulWidget {
  const AzkarDetailsView(
      {
        Key? key,
        required this.title,
        required this.index,
      }
      ) : super(key: key);
final String title;
final int index;

  @override
  State<AzkarDetailsView> createState() => _AzkarDetailsViewState();
}

class _AzkarDetailsViewState extends State<AzkarDetailsView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
Future.delayed(Duration.zero, ( ) {
  Provider.of<AzkarProvider>(context,listen:false).restart();

} );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, widget.title),
body:  AzkarDetailsViewBody(
indexOfZekr: widget.index,
),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controller/providers/azkar_provider.dart';

class RestartIcon extends StatelessWidget {
  const RestartIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Consumer<AzkarProvider>(
        builder: (context,provider,_) {
          return  GestureDetector(
            onTap: ( ) {
              provider.restart();
            },
            child: Container(
              padding: const EdgeInsets.all(10),
                
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4), 
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Icon(Icons.restore_rounded,color: Colors.white,)),
          );
        }
    );
  }
}

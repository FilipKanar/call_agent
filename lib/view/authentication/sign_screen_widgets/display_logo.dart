import 'package:call_agent/theme/app_dimensions.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';

class DisplayLogo extends StatelessWidget {
  const DisplayLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(AppDimensions.spacingNarrow),child: Column(children: const  [
      Icon(Icons.ac_unit, size: AppDimensions.welcomeLogoLarge, color: AppColors.primary,),
      Text('Agent'),
    ],),);
  }
}

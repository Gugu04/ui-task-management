import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';

class ButtonAddW extends StatelessWidget {
  const ButtonAddW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: AppTheme.borderNoBottomRight(),
          color: AppColors.blue,
          boxShadow: [AppTheme.boxShadowLightBlue()]),
      child:
          SvgPicture.asset(AppAssets.add, color: AppColors.white, height: 25),
    );
  }
}

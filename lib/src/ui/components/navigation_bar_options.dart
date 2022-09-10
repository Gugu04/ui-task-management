import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';

class NavigationBarOptions extends StatelessWidget {
  const NavigationBarOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> options = [
      AppAssets.home,
      AppAssets.message,
      AppAssets.notification,
      AppAssets.user
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
            options.length,
            (index) => SvgPicture.asset(
                  options[index],
                  height: 23,
                  color: index == 0 ? AppColors.blue : AppColors.grey4,
                )),
      ),
    );
  }
}

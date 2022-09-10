import 'package:flutter/material.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';
import 'package:ui_task_management/src/ui/components/option_button.dart';

class TaskCategoryOptionsW extends StatelessWidget {
  final String title;
  final int color;

  const TaskCategoryOptionsW(
      {Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            decoration: AppTheme.borderNoBottomLeft(color),
            child: Text(title,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.bold))),
        Row(children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: OptionButton(
              backgroundColor: AppColors.blue3,
              iconColor: AppColors.blue,
              iconAsset: AppAssets.add,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2),
            child: OptionButton(
              backgroundColor: AppColors.blue3,
              iconColor: AppColors.blue,
              iconAsset: AppAssets.menu1,
            ),
          ),
        ])
      ],
    );
  }
}

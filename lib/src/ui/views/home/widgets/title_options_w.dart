import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';

class TitleOptionsW extends StatelessWidget {
  const TitleOptionsW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Boards',
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.bold, color: AppColors.black),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(8)),
          child: Row(children: [
            SvgPicture.asset(
              AppAssets.visualize1,
              color: AppColors.blue,
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SvgPicture.asset(
                AppAssets.line,
                color: AppColors.blue,
                height: 20,
              ),
            ),
            SvgPicture.asset(
              AppAssets.visualize2,
              color: AppColors.grey4,
              height: 17,
            )
          ]),
        )
      ],
    );
  }
}

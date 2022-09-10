import 'package:flutter/material.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 8, top: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: AppColors.lightGrey, width: 2)),
      child: Row(
        children: [
          Container(
            width: 17,
            height: 34,
            margin: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: AppColors.blue4,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
          ),
          Container(
            width: 17,
            height: 34,
            margin: const EdgeInsets.only(left: 5),
            decoration: const BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
          )
        ],
      ),
    );
  }
}

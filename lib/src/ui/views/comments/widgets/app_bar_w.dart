import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';

class AppBarW extends StatelessWidget {
  const AppBarW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              child: const Padding(
                padding: EdgeInsets.all(4),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
              ),
              onTap: () => Navigator.pop(context),
            ),
            Text("Comments",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headline6),
            SvgPicture.asset(
              AppAssets.clip,
              color: AppColors.blue,
              height: 27,
            )
          ]),
        ],
      ),
    );
  }
}

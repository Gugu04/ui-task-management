import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task_management/src/api/data/data.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';

class TaskItemW extends StatelessWidget {
  final int color;
  final TaskModel item;

  const TaskItemW({Key? key, required this.color, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22), color: AppColors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style:
                    textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.comments != null
                        ? '${item.comments!.length} Comments'
                        : '0 Comments',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.subtitle2!.copyWith(
                      color: AppColors.grey3,
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppAssets.clip,
                        height: 20,
                        color: AppColors.grey3,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        "4",
                        style: textTheme.subtitle1!.copyWith(
                            color: AppColors.grey3,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
            left: 0,
            top: 23,
            child: Container(
              width: 6,
              height: 22,
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(30)),
            ))
      ],
    );
  }
}

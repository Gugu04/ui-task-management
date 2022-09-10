import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task_management/src/api/data/data.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';

class ClusterW extends StatelessWidget {
  final ClusterModel data;

  const ClusterW({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: AppColors.white, shape: BoxShape.circle),
            child: SvgPicture.asset(
              data.icon,
              height: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 8),
            child: Text(data.title,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: AppColors.black, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}

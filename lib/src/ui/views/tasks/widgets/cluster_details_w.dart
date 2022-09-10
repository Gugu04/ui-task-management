import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task_management/src/api/data/data.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';
import 'package:ui_task_management/src/ui/components/option_button.dart';
import 'package:ui_task_management/src/ui/views/tasks/widgets/member_avatars_w.dart';

class ClusterDetailsW extends StatelessWidget {
  final String icon;
  final String title;
  final BoardModel board;
  const ClusterDetailsW(
      {Key? key, required this.icon, required this.title, required this.board})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                  ),
                ),
                onTap: () => Navigator.pop(context),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.grey2, width: 2.3)),
                    child: SvgPicture.asset(
                      icon,
                      height: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 8),
                    child: Text(title,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontWeight: FontWeight.bold)),
                  )
                ],
              ),
              Row(
                children: const [
                  OptionButton(
                    backgroundColor: AppColors.blue,
                    iconColor: AppColors.white,
                    iconAsset: AppAssets.menu2,
                  ),
                  SizedBox(width: 15),
                  OptionButton(
                    backgroundColor: AppColors.blue,
                    iconColor: AppColors.white,
                    iconAsset: AppAssets.notification,
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              board.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MemberAvatarsW(members: board.members),
              Text(
                'Send Invite',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: AppColors.blue, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}

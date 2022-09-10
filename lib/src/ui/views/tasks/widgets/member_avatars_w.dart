import 'package:flutter/material.dart';
import 'package:ui_task_management/src/api/data/data.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';

class MemberAvatarsW extends StatelessWidget {
  final List<MemberModel> members;
  const MemberAvatarsW({Key? key, required this.members}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Row(
              children: List.generate(
                  members.length >= 3 ? 3 : members.length,
                  (i) => Align(
                        alignment: Alignment.centerLeft,
                        widthFactor: 0.65,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: AppColors.white),
                          child: CircleAvatar(
                            maxRadius: 20,
                            backgroundImage: AssetImage(members[i].urlPhoto),
                          ),
                        ),
                      ))),
          const SizedBox(
            width: 25,
          ),
          if ((members.length - 3) >= 0) ...[
            Expanded(
              child: Text(
                '\u002B${(members.length - 3)} people',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ]
        ],
      ),
    );
  }
}

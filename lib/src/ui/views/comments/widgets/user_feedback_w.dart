import 'package:flutter/material.dart';
import 'package:ui_task_management/src/api/data/data.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';

class UserFeedbackW extends StatelessWidget {
  final List<CommentModel>? data;

  const UserFeedbackW({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: data == null || data!.isEmpty
            ? [
                Text(
                  "no comments yet",
                  style: Theme.of(context).textTheme.headline6,
                )
              ]
            : data!
                .map((item) => Container(
                      margin: const EdgeInsets.only(bottom: 13),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.white),
                                child: CircleAvatar(
                                  maxRadius: 18,
                                  backgroundImage:
                                      AssetImage(item.member.urlPhoto),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${item.member.name} ${item.member.lastnames}",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(color: AppColors.grey3),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              item.description,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          )
                        ],
                      ),
                    ))
                .toList());
  }
}

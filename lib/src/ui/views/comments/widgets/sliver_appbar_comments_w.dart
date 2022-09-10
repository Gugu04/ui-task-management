import 'package:flutter/material.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';

class SliverAppbarCommentsW extends StatelessWidget {
  final String title;
  final int color;
  final String tag;
  const SliverAppbarCommentsW(
      {Key? key, required this.title, required this.color, required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      automaticallyImplyLeading: false,
      expandedHeight: title.length >= 27 ? 150 : 110,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                decoration: BoxDecoration(
                    color: Color(color),
                    borderRadius: BorderRadius.circular(30)),
                child: Text(tag,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: AppColors.white)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

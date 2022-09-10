import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task_management/src/api/data/data.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';

class SliverAppbarHomeW extends StatelessWidget {
  const SliverAppbarHomeW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      expandedHeight: 140,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(AppAssets.search,
                          color: AppColors.grey, height: 10),
                    ),
                    hintText: 'Search cards...'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              height: 56,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemExtent: 142,
                itemCount: menu.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Text(menu[index],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  color: index == 0 ? AppColors.blue : null)),
                      index == 0
                          ? Container(
                              height: 5,
                              width: 5,
                              margin: const EdgeInsets.only(top: 3),
                              decoration: const BoxDecoration(
                                  color: AppColors.blue,
                                  shape: BoxShape.circle),
                            )
                          : const SizedBox()
                    ],
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

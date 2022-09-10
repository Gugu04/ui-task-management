import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';
import 'package:ui_task_management/src/ui/components/option_button.dart';

class SliverAppbarTaksW extends StatelessWidget {
  const SliverAppbarTaksW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      automaticallyImplyLeading: false,
      expandedHeight: 80,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: Row(
            children: [
              Expanded(
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: OptionButton(
                  backgroundColor: AppColors.lightGrey,
                  iconColor: AppColors.blue,
                  iconAsset: AppAssets.lessZoom,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(children: [
                  SvgPicture.asset(
                    AppAssets.arrowLeft,
                    color: Colors.white,
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: SvgPicture.asset(
                      AppAssets.line,
                      color: Colors.white,
                      height: 20,
                    ),
                  ),
                  SvgPicture.asset(
                    AppAssets.arrowRight,
                    color: Colors.white,
                    height: 10,
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

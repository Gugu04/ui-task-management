import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task_management/src/core/constants/constants.dart';

class SendCommentW extends StatelessWidget {
  const SendCommentW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              minLines: 1,
              maxLines: 4,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: AppColors.blue, width: 2),
                      borderRadius: BorderRadius.circular(17)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: AppColors.blue, width: 2),
                      borderRadius: BorderRadius.circular(17)),
                  contentPadding: const EdgeInsets.all(15),
                  fillColor: AppColors.white,
                  hintText: 'Comment'),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.blue),
            child: SvgPicture.asset(AppAssets.send,
                color: AppColors.white, height: 36),
          ),
        ],
      ),
    );
  }
}

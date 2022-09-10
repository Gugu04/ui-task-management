import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OptionButton extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final String iconAsset;
  const OptionButton(
      {Key? key,
      required this.backgroundColor,
      required this.iconColor,
      required this.iconAsset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 41,
      height: 41,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(13),
      ),
      child: SvgPicture.asset(
        iconAsset,
        color: iconColor,
      ),
    );
  }
}

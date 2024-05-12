import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/core/constant/app_color.dart';
import 'package:pacific_hunt/core/styles/text_styles.dart';
import 'package:pacific_hunt/custom_widgets/safe_on_tap.dart';


class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key,
      required this.text,
      this.borderRadius = 10,
      this.horizontalPadding = 15,
      this.verticalPadding = 15,
      required this.func,
      this.border,
      this.style,
      this.iconData,
      this.btnColor = AppColors.buttonColor,
      this.textColor = AppColors.white,
      this.fontSize = 14});
  final String text;
  final Function func;
  final TextStyle? style;
  final double verticalPadding;
  final double horizontalPadding;
  final double borderRadius;
  final Border? border;
  final Color btnColor;

  final Color textColor;
  final Widget? iconData;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return SafeOnTap(
      onSafeTap: () {
        func();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: verticalPadding, horizontal: horizontalPadding),
        decoration: BoxDecoration(
            color: btnColor,
            border: border,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconData != null ? iconData! : const SizedBox.shrink(),
            iconData != null ?8.horizontalSpace : const SizedBox.shrink(),
            Text(
              text,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: style ??
                 w4f16(AppColors.defaultTextFieldLabelColor),
            ),
          ],
        ),
      ),
    );
  }
}

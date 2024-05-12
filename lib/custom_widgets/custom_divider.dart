

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/core/constant/app_color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key,this.thickness,this.color});
 final double? thickness;
 final Color? color;
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: thickness??1.h,
      color:color?? AppColors.socialBtnBorderColor,

    );
  }
}

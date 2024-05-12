

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/styles/text_styles.dart';
import '../../../custom_widgets/custom_divider.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.w),
      child: Row(
        children: [
          const Flexible(flex: 5, child: CustomDivider()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              "or",
              style: w5f14(AppColors.defaultTextFieldLabelColor),
            ),
          ),
          const Flexible(flex: 5, child: CustomDivider()),
        ],
      ),
    );
  }
}

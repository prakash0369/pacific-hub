import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/core/constant/app_assets.dart';
import 'package:pacific_hunt/core/constant/app_color.dart';
import 'package:pacific_hunt/core/styles/text_styles.dart';
import 'package:pacific_hunt/core/utils/toast_util.dart';
import 'package:pacific_hunt/custom_widgets/primary_btn.dart';

import 'app_icon_data.dart';

class SocialAuths extends StatelessWidget {
  const SocialAuths({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PrimaryButton(
          iconData: Image.asset(
            AppAssets.googleLogo,
            height: 24,
          ),
          style: w4f16(AppColors.defaultTextFieldLabelColor),
          func: () {
          },
          btnColor: Colors.transparent,
          text: 'Continue with Google',
          border: Border.all(color: AppColors.socialBtnBorderColor),
        ),
        16.verticalSpace,
        Visibility(
          visible: Platform.isIOS,
          child: PrimaryButton(
            iconData:  AppIcon(icon: AppIconData(AppAssets.appleLogo), size: 24),
            style: w4f16(AppColors.defaultTextFieldLabelColor),
            func: () {
              showSuccessToast("continue with apple");
            },
            btnColor: Colors.transparent,
            text: 'Continue with Apple',
            border: Border.all(color: AppColors.socialBtnBorderColor),
          ),
        ),

      ],
    );
  }
}

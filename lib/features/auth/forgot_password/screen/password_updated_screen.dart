
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/core/constant/app_assets.dart';
import 'package:pacific_hunt/core/constant/app_color.dart';
import 'package:pacific_hunt/core/styles/text_styles.dart';
import 'package:pacific_hunt/custom_widgets/custom_button.dart';

@RoutePage()
class PasswordUpdatedScreen extends StatelessWidget {
  const PasswordUpdatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:  EdgeInsets.all(21.r),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppAssets.changeSuccessfulImg,height: 197.h,width: 113.w,),
              24.verticalSpace,
              Text("Your password has been updated successfully.",textAlign: TextAlign.center,style: w4f16(AppColors.defaultTextFieldLabelColor),),
              36.verticalSpace,
              CustomButton(onPressed: (){}, label: "Find Your Dream Job")
            ],
          ),
        ),
      ),
    );
  }
}

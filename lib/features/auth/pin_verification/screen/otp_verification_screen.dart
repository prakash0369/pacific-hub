
import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/core/constant/app_color.dart';
import 'package:pacific_hunt/core/utils/toast_util.dart';
import 'package:pacific_hunt/custom_widgets/custom_button.dart';
import 'package:pacific_hunt/features/auth/auth_common_widget/auth_page_holder.dart';
import 'package:pacific_hunt/features/auth/auth_common_widget/page_header_tile.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/styles/text_styles.dart';

@RoutePage()
class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      width: 48.r,
      height: 48.r,
      textStyle:  TextStyle(
        fontSize: 22.sp,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.defaultTextFieldLabelColor),
      ),
    );

    return AuthPageHolder(
      ctx: context,
        child: Column(
          children: [
            const PageHeaderTile(title: "Mobile verification", des: "We’ve sent 5 digit OTP code on your mobile number: +9779812345678"),
         36.verticalSpace,
      Pinput(
        controller: pinController,
        focusNode: focusNode,
        length: 5,
        androidSmsAutofillMethod:
        AndroidSmsAutofillMethod.smsUserConsentApi,
        listenForMultipleSmsOnAndroid: true,
        defaultPinTheme: defaultPinTheme,
        separatorBuilder: (index) =>  SizedBox(width: 20.w),
        hapticFeedbackType: HapticFeedbackType.lightImpact,
        cursor: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 9),
              width: 22,
              height: 1,
              color: AppColors.lightTextColor,
            ),
          ],
        ),
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: AppColors.lightTextColor),
          ),
        ),
        submittedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: AppColors.lightTextColor),
          ),
        ),
        errorPinTheme: defaultPinTheme.copyBorderWith(
          border: Border.all(color: AppColors.red),
        ),
      ),
            16.verticalSpace,
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  text: 'Didn’t receive the code? ',
                  style: w4f14(AppColors.lightTextColor),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Resend code',
                        style: w4f14(AppColors.buttonColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {

                          }),

                  ],
                ),
              ),
            ),
            36.verticalSpace,
            CustomButton(onPressed: (){
                   showSuccessToast(pinController.text.toString());
            }, label: "Verify")
          ],
        ));
  }
}

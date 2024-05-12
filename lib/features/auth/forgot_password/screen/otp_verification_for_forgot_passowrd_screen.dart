import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/core/route/auto_route.dart';
import 'package:pinput/pinput.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/styles/text_styles.dart';
import '../../../../core/utils/toast_util.dart';
import '../../../../custom_widgets/custom_button.dart';
import '../../auth_common_widget/auth_page_holder.dart';
import '../../auth_common_widget/page_header_tile.dart';

@RoutePage()
class OtpVerificationForForgotPasswordScreen extends StatefulWidget {
  const OtpVerificationForForgotPasswordScreen({super.key, this.phoneOrEmail});
  final String? phoneOrEmail;

  @override
  State<OtpVerificationForForgotPasswordScreen> createState() =>
      _OtpVerificationForForgotPasswordScreenState();
}

class _OtpVerificationForForgotPasswordScreenState
    extends State<OtpVerificationForForgotPasswordScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 48.r,
      height: 48.r,
      textStyle: TextStyle(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             PageHeaderTile(
                title: "Verify Code",
                isRichText: true,
                firstText: "Please Enter the 5 Digits OTP code we’ve sent to ",
                secondText:
                    widget.phoneOrEmail ?? "Jitendra@vrittechnologies.com"),
            36.verticalSpace,
            Pinput(
              controller: pinController,
              focusNode: focusNode,
              length: 5,
              androidSmsAutofillMethod:
                  AndroidSmsAutofillMethod.smsUserConsentApi,
              listenForMultipleSmsOnAndroid: true,
              defaultPinTheme: defaultPinTheme,
              separatorBuilder: (index) => SizedBox(width: 20.w),
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
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                  ],
                ),
              ),
            ),
            36.verticalSpace,
            CustomButton(
                onPressed: () {
                  context.router.push(const PasswordUpdatedRoute());
                },
                label: "Verify")
          ],
        ));
  }
}

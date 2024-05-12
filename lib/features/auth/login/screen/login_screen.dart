import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/core/constant/app_color.dart';
import 'package:pacific_hunt/core/route/auto_route.dart';
import 'package:pacific_hunt/core/styles/text_styles.dart';
import 'package:pacific_hunt/core/utils/toast_util.dart';
import 'package:pacific_hunt/custom_widgets/custom_button.dart';
import 'package:pacific_hunt/custom_widgets/custom_divider.dart';
import 'package:pacific_hunt/custom_widgets/custom_textfield.dart';
import 'package:pacific_hunt/custom_widgets/social_auth_button.dart';
import 'package:pacific_hunt/features/auth/auth_common_widget/auth_page_holder.dart';
import 'package:pacific_hunt/features/auth/auth_common_widget/or_divider.dart';
import 'package:pacific_hunt/features/auth/auth_common_widget/page_header_tile.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    return AuthPageHolder(
        ctx: context,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PageHeaderTile(
                  title: "Login", des: "Welcome back! Log in to continue."),
              30.verticalSpace,
              const CustomTextField(labelText: "Full Name"),
              15.verticalSpace,
              const CustomTextField(
                labelText: "Password",
                isPassword: true,
              ),
              10.verticalSpace,
              Row(
                children: [
                  Checkbox(
                      value: isRemember,
                      side: const BorderSide(color: AppColors.hintTextColor),
                      checkColor: AppColors.white,
                      activeColor: AppColors.buttonColor,
                      onChanged: (v) {
                        setState(() {
                          isRemember = v!;
                        });
                      }),
                  Text(
                    "Keep me logged in",
                    style: w4f14(AppColors.lightGreyColor),
                  ),
                  const Spacer(),
                  InkWell(
                      onTap: () {
                        context.pushRoute(const ForgotPasswordChooserRoute());
                      },
                      child: Text(
                        "Forgot password?",
                        style: w4f14(AppColors.lightGreyColor),
                      )),
                ],
              ),
              30.verticalSpace,
              CustomButton(
                  onPressed: () {
                    context.pushRoute(const OtpVerificationRoute());
                   },
                  label: "Login"),
              12.verticalSpace,
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: 'Don’t have an account? ',
                    style: w4f14(AppColors.lightTextColor),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Sign Up',
                          style: w4f14(AppColors.buttonColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.router.push(const SignUpRoute());
                            }),
                    ],
                  ),
                ),
              ),
              const OrDivider(),
              const SocialAuths(),
            ],
          ),
        ));
  }
}

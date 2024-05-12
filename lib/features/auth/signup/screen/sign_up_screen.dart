

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pacific_hunt/core/extension/extension_on_size_box.dart';
import 'package:pacific_hunt/core/route/auto_route.dart';
import 'package:pacific_hunt/core/styles/text_styles.dart';
import 'package:pacific_hunt/core/utils/toast_util.dart';
import 'package:pacific_hunt/custom_widgets/custom_button.dart';
import 'package:pacific_hunt/custom_widgets/custom_phone_field.dart';
import 'package:pacific_hunt/custom_widgets/custom_textfield.dart';
import 'package:pacific_hunt/custom_widgets/social_auth_button.dart';
import 'package:pacific_hunt/features/auth/auth_common_widget/auth_page_holder.dart';
import 'package:pacific_hunt/features/auth/auth_common_widget/or_divider.dart';
import 'package:pacific_hunt/features/auth/auth_common_widget/page_header_tile.dart';
import 'package:pacific_hunt/features/auth/login/screen/login_screen.dart';

import '../../../../core/constant/app_color.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isAgree=false;
  @override
  Widget build(BuildContext context) {
    return AuthPageHolder(
      ctx: context,
        showSkipBtn: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PageHeaderTile(
                  title: "Sign up", des: "Hi there! Sign up to get started."),
              36.verticalSpace,
              const CustomTextField(labelText: "Full Name"),
              20.verticalSpace,
              const CustomTextField(labelText: "Email Address"),
              20.verticalSpace,
              const CustomPhoneField(labelText: "Mobile number (Optional)"),
              20.verticalSpace,
              const CustomTextField(labelText: "Password",isPassword: true,),
              20.verticalSpace,
              const CustomTextField(labelText: "Confirm Password",isPassword: true,),
              20.verticalSpace,
              Row(children: [
                Checkbox(
                  side: const BorderSide(color: AppColors.hintTextColor),
                  activeColor: AppColors.buttonColor,
                    value: isAgree, onChanged: (v){
                  setState(() {
                    isAgree=v!;
                  });
                }),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'By signing up, I agree to ',
                      style: w5f14(AppColors.defaultTextFieldLabelColor),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Pacific Hunt Terms & Conditions ',
                            style: w4f14(AppColors.buttonColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                              }),
                        TextSpan(
                            text: 'and ',
                            style: w4f14(AppColors.defaultTextFieldLabelColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                              }), TextSpan(
                            text: 'Privacy Policy',
                            style: w4f14(AppColors.buttonColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                              }),
                      ],
                    ),
                  ),
                ),
              ],),
              24.verticalSpace,
              CustomButton(onPressed: (){
                context.router.push(const OtpVerificationRoute());
              }, label: "Sign Up"),
              16.verticalSpace,
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: w4f14(AppColors.lightTextColor),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Log In',
                          style: w4f14(AppColors.buttonColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.router.popAndPush(LoginRoute());
                            }),
                    ],
                  ),
                ),
              ),
              const OrDivider(),
              const SocialAuths()




            ],
          ),
        ) );
  }
}

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/core/constant/app_texts.dart';
import 'package:pacific_hunt/core/route/auto_route.dart';
import 'package:pacific_hunt/custom_widgets/custom_button.dart';
import 'package:pacific_hunt/custom_widgets/custom_phone_field.dart';
import 'package:pacific_hunt/custom_widgets/custom_textfield.dart';
import 'package:pacific_hunt/features/auth/auth_common_widget/auth_page_holder.dart';
import 'package:pacific_hunt/features/auth/auth_common_widget/page_header_tile.dart';

@RoutePage()
class ForgotPasswordAddScreen extends StatefulWidget {
  const ForgotPasswordAddScreen({super.key, required this.type});

  final String type;

  @override
  State<ForgotPasswordAddScreen> createState() =>
      _ForgotPasswordAddScreenState();
}

class _ForgotPasswordAddScreenState extends State<ForgotPasswordAddScreen> {
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AuthPageHolder(
        ctx: context,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageHeaderTile(
                title: "Forgot password",
                des:
                    "Please provide your ${widget.type == AppText.email ? "email address." : "phone number."}"),
            36.verticalSpace,
            if (widget.type == AppText.email)
              CustomTextField(
                  controller: emailController,
                  hintText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  labelText: "Email")
            else
              CustomPhoneField(
                controller: phoneController,
                labelText: 'Phone No',
              ),
            36.verticalSpace,
            CustomButton(
                onPressed: () {
                  context.router.push(OtpVerificationForForgotPasswordRoute(
                      phoneOrEmail: widget.type == AppText.phone
                          ? phoneController.text
                          : emailController.text));
                },
                label: "Send")
          ],
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/custom_widgets/custom_button.dart';
import 'package:pacific_hunt/custom_widgets/custom_textfield.dart';
import 'package:pacific_hunt/features/auth/auth_common_widget/auth_page_holder.dart';
import 'package:pacific_hunt/features/auth/auth_common_widget/page_header_tile.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final newPasswordController=TextEditingController();
  final confirmPasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AuthPageHolder(
        ctx: context,
        child:  Column(
          children: [
            const PageHeaderTile(
                title: "Create New Password",
                des:
                    "Your New Password must be different from previously used Password."),
            36.verticalSpace,
            CustomTextField(
              controller: newPasswordController,
                labelText: "New Password"),
            20.verticalSpace,
            CustomTextField(
                controller: confirmPasswordController,
                labelText: "Confirm Password"),
            24.verticalSpace,
            CustomButton(onPressed: (){

            }, label: "Confirm")


          ],
        ));
  }
}

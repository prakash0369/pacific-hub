
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/core/constant/app_texts.dart';
import 'package:pacific_hunt/core/route/auto_route.dart';
import 'package:pacific_hunt/core/utils/toast_util.dart';
import 'package:pacific_hunt/custom_widgets/custom_button.dart';
import 'package:pacific_hunt/features/auth/auth_common_widget/auth_page_holder.dart';
import 'package:pacific_hunt/features/auth/auth_common_widget/page_header_tile.dart';
import 'package:pacific_hunt/features/auth/forgot_password/widget/auth_chooser_view.dart';

@RoutePage()
class ForgotPasswordChooserScreen extends StatefulWidget {
  const ForgotPasswordChooserScreen({super.key});

  @override
  State<ForgotPasswordChooserScreen> createState() => _ForgotPasswordChooserScreenState();
}

class _ForgotPasswordChooserScreenState extends State<ForgotPasswordChooserScreen> {
  List<String> authType=[AppText.email,AppText.phone];
  String? selectedAuth;

  @override
  Widget build(BuildContext context) {
    return AuthPageHolder(
      ctx: context,
      child: Column(
      children: [
        const PageHeaderTile(title: "Forgot password", des: "Select the contact details you prefer for password recovery."),
        36.verticalSpace,
        ...List.generate(authType.length, (index) => GestureDetector(
          onTap: (){
            setState(() {
              selectedAuth=authType[index];
            });
          },
            child: AuthChooserView(label: authType[index], isSelected: selectedAuth==authType[index],))),
        24.verticalSpace,
        CustomButton(
          color: selectedAuth==null?Colors.white: null,
            isDisable: selectedAuth==null,
            onPressed: (){
            if(selectedAuth!=null){
              context.router.push(ForgotPasswordAddRoute(type: selectedAuth!));
            }else{
              showErrorToast("Please select auth type.");
            }

        }, label: "Send")



      ],
    ),);
  }
}

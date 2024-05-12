
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/core/constant/app_color.dart';
import 'package:pacific_hunt/core/styles/text_styles.dart';

class PageHeaderTile extends StatelessWidget {
  const PageHeaderTile({super.key,required this.title, this.des,this.isRichText=false,this.firstText,this.secondText});
  final String title;
  final String? des;
  final bool? isRichText;
  final String? firstText;
  final String? secondText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(title,style: w6f22(AppColors.defaultTextFieldLabelColor),),
      4.verticalSpace,
      if(!isRichText!)
      Text(des??"",style: w4f16(AppColors.lightGreyColor),)
        else
        RichText(
          text: TextSpan(
            text: firstText??'',
            style: w4f14(AppColors.lightTextColor),
            children: <TextSpan>[
              TextSpan(
                  text: secondText??'',
                  style: w4f14(AppColors.buttonColor),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                    }),
            ],
          ),
        ),


    ],);
  }
}

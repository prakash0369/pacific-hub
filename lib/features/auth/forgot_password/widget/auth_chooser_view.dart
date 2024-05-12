
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/core/constant/app_color.dart';
import 'package:pacific_hunt/core/styles/text_styles.dart';

class AuthChooserView extends StatelessWidget {
  const AuthChooserView({super.key,required this.label,required this.isSelected});
  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 24.h),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.r,horizontal: 16.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.borderColor)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label,style: w4f14(AppColors.lightGreyColor),),
            if(isSelected)
              const Icon(Icons.check_circle_outlined,color: AppColors.buttonColor,)
             else
            const Icon(Icons.circle_outlined,color: AppColors.borderColor,),


          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/core/constant/app_color.dart';
import 'package:pacific_hunt/core/styles/text_styles.dart';
import 'package:pacific_hunt/features/onbording/model/onboarding_model.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView(
      {super.key,
      required this.model,
      required this.pageLength,
      required this.currentIndex});

  final OnBoardingModel model;
  final int pageLength;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 418.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.secondaryGradient,
                        AppColors.primaryColor
                      ])),
            ),
            Positioned(
              left: 0,
                right: 0,
                bottom: 48,
                child: Image.asset(model.image,height: 200.r,width: 306.r,))
          ],
        ),
        30.verticalSpace,
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  pageLength,
                  (index) => buildDot(index, context),
                ),
              ),
              24.verticalSpace,
              Text(model.title,style: w6f22(AppColors.headingColor),),
              16.verticalSpace,
              Text(model.description,style: w4f14(AppColors.lightTextColor),)
            ],
          ),
        ),

      ],
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:currentIndex == index? AppColors.buttonColor:AppColors.unselectedLightBlue,
      ),
    );
  }
}

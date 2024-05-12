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
import 'package:pacific_hunt/features/onbording/model/onboarding_model.dart';

import '../widget/onboarding_image_view.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  PageController? controller;


  @override
  void initState() {
    controller=PageController(initialPage: currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: pages.length,
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemBuilder: (context, index) {
                  return OnBoardingView(
                    model: pages[index],
                    pageLength: pages.length,
                    currentIndex: currentIndex,
                  );
                })),
        Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
          child: Column(
            children: [
              CustomButton(
                  onPressed: () {
                    if (currentIndex == pages.length - 1) {
                       context.pushRoute(const LoginRoute());
                    }else{
                      setState(() {
                        currentIndex++;
                        // controller?.jumpToPage(currentIndex);
                        controller?.animateToPage(
                          currentIndex,
                          duration: const Duration(milliseconds: 500), // Adjust duration as needed
                          curve: Curves.ease, // Specify the animation curve
                        );
                      });
                    }
                  },
                  label: (currentIndex == pages.length - 1) ? "Continue" : "Next"),
                16.verticalSpace,
              RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: w4f14(AppColors.lightTextColor),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Sign in',
                        style: w4f14(AppColors.buttonColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.router.push(const LoginRoute());
                          }),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}

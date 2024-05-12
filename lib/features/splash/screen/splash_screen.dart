import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/core/constant/app_assets.dart';
import 'package:pacific_hunt/core/constant/app_color.dart';
import 'package:pacific_hunt/core/route/auto_route.dart';
import 'package:pacific_hunt/core/styles/text_styles.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration:  const BoxDecoration(
          gradient: RadialGradient(
            colors: [AppColors.secondaryGradient, AppColors.primaryColor],
            center: Alignment.center, // Center the gradient
            radius: 0.99, // Adjust radius for gradient spread (0.0 - 1.0)
          )
        ),

        child: Stack(
          children: [
            Center(
              child: Positioned.fill(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(AppAssets.pacificHuntLogo,width: 166,height: 48,),
                    8.verticalSpace,
                    Text(
                      "Get Ready to hunt your \nnext dream jobs",
                      textAlign: TextAlign.center,
                      style: w4f14(AppColors.white),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 40,
              child: Image.asset(AppAssets.pacificHuntPowerLogo,height: 42,width: 135,),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      context.replaceRoute(const OnboardingRoute());
    });
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pacific_hunt/core/constant/app_assets.dart';
import 'package:pacific_hunt/core/constant/app_color.dart';
import 'package:pacific_hunt/core/styles/text_styles.dart';

class AuthPageHolder extends StatelessWidget {
  const AuthPageHolder(
      {super.key,
      required this.child,
      this.backIcon,
      this.showSkipBtn = false,
      required this.ctx});

  final Widget child;
  final BuildContext ctx;
  final IconData? backIcon;
  final bool? showSkipBtn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 36.r, top: 25.r),
                  child: Image.asset(
                    AppAssets.authHeaderIcon,
                    height: 40.h,
                    width: 189.w,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.r, left: 21.r, right: 21.r),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        AutoRouter.of(ctx).maybePop();
                      },
                      child: Icon(
                        backIcon ?? Icons.close,
                        size: 24.r,
                      )),
                  const Spacer(),
                  if (showSkipBtn!)
                    Text(
                      "Skip",
                      style: w4f16(AppColors.lightGreyColor),
                    )
                  else
                    const SizedBox.shrink()
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(21.r),
              child: child,
            ))
          ],
        ),
      ),
    );
  }
}

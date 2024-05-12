
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../../features/auth/forgot_password/screen/forgot_passowrd_chooser_screen.dart';
import '../../features/auth/forgot_password/screen/forgot_password_add_screen.dart';
import '../../features/auth/forgot_password/screen/otp_verification_for_forgot_passowrd_screen.dart';
import '../../features/auth/forgot_password/screen/password_updated_screen.dart';
import '../../features/auth/login/screen/login_screen.dart';
import '../../features/auth/pin_verification/screen/otp_verification_screen.dart';
import '../../features/auth/signup/screen/sign_up_screen.dart';
import '../../features/onbording/screen/onboarding_screen.dart';
import '../../features/splash/screen/splash_screen.dart';
part 'auto_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: SplashRoute.page,
      initial: true,
    ),
    AutoRoute(page:OnboardingRoute.page),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: OtpVerificationRoute.page),
    AutoRoute(page: ForgotPasswordChooserRoute.page),
    AutoRoute(page: ForgotPasswordAddRoute.page),
    AutoRoute(page: PasswordUpdatedRoute.page),
    AutoRoute(page: OtpVerificationForForgotPasswordRoute.page),
    AutoRoute(page: PasswordUpdatedRoute.page)



  ];
}
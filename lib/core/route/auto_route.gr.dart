// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'auto_route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ForgotPasswordAddRoute.name: (routeData) {
      final args = routeData.argsAs<ForgotPasswordAddRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ForgotPasswordAddScreen(
          key: args.key,
          type: args.type,
        ),
      );
    },
    ForgotPasswordChooserRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordChooserScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingScreen(),
      );
    },
    OtpVerificationForForgotPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<OtpVerificationForForgotPasswordRouteArgs>(
          orElse: () => const OtpVerificationForForgotPasswordRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OtpVerificationForForgotPasswordScreen(
          key: args.key,
          phoneOrEmail: args.phoneOrEmail,
        ),
      );
    },
    OtpVerificationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OtpVerificationScreen(),
      );
    },
    PasswordUpdatedRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PasswordUpdatedScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [ForgotPasswordAddScreen]
class ForgotPasswordAddRoute extends PageRouteInfo<ForgotPasswordAddRouteArgs> {
  ForgotPasswordAddRoute({
    Key? key,
    required String type,
    List<PageRouteInfo>? children,
  }) : super(
          ForgotPasswordAddRoute.name,
          args: ForgotPasswordAddRouteArgs(
            key: key,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordAddRoute';

  static const PageInfo<ForgotPasswordAddRouteArgs> page =
      PageInfo<ForgotPasswordAddRouteArgs>(name);
}

class ForgotPasswordAddRouteArgs {
  const ForgotPasswordAddRouteArgs({
    this.key,
    required this.type,
  });

  final Key? key;

  final String type;

  @override
  String toString() {
    return 'ForgotPasswordAddRouteArgs{key: $key, type: $type}';
  }
}

/// generated route for
/// [ForgotPasswordChooserScreen]
class ForgotPasswordChooserRoute extends PageRouteInfo<void> {
  const ForgotPasswordChooserRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordChooserRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordChooserRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OtpVerificationForForgotPasswordScreen]
class OtpVerificationForForgotPasswordRoute
    extends PageRouteInfo<OtpVerificationForForgotPasswordRouteArgs> {
  OtpVerificationForForgotPasswordRoute({
    Key? key,
    String? phoneOrEmail,
    List<PageRouteInfo>? children,
  }) : super(
          OtpVerificationForForgotPasswordRoute.name,
          args: OtpVerificationForForgotPasswordRouteArgs(
            key: key,
            phoneOrEmail: phoneOrEmail,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpVerificationForForgotPasswordRoute';

  static const PageInfo<OtpVerificationForForgotPasswordRouteArgs> page =
      PageInfo<OtpVerificationForForgotPasswordRouteArgs>(name);
}

class OtpVerificationForForgotPasswordRouteArgs {
  const OtpVerificationForForgotPasswordRouteArgs({
    this.key,
    this.phoneOrEmail,
  });

  final Key? key;

  final String? phoneOrEmail;

  @override
  String toString() {
    return 'OtpVerificationForForgotPasswordRouteArgs{key: $key, phoneOrEmail: $phoneOrEmail}';
  }
}

/// generated route for
/// [OtpVerificationScreen]
class OtpVerificationRoute extends PageRouteInfo<void> {
  const OtpVerificationRoute({List<PageRouteInfo>? children})
      : super(
          OtpVerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpVerificationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PasswordUpdatedScreen]
class PasswordUpdatedRoute extends PageRouteInfo<void> {
  const PasswordUpdatedRoute({List<PageRouteInfo>? children})
      : super(
          PasswordUpdatedRoute.name,
          initialChildren: children,
        );

  static const String name = 'PasswordUpdatedRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpScreen]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

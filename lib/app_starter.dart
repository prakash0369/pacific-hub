import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/route/auto_route.dart';

class AppStarter extends StatelessWidget {
  AppStarter({super.key});
  final _appRouter = AppRouter();


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,widget){
        return MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          title: 'Pacific Hunt',
          debugShowCheckedModeBanner: false,
          // theme: AppTheme.defaultTheme,

        );
      },
    );
  }
}

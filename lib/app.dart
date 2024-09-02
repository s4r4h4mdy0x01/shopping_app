import 'package:flutter/material.dart';
import 'package:shopping_app/core/router/app_router.dart';
import 'package:shopping_app/core/router/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoppingApp extends StatelessWidget {
  final AppRouter appRouter;
  const ShoppingApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Shopping App',
          theme: ThemeData(),
          onGenerateRoute: AppRouter.onGenerate,
          initialRoute: RoutesString.splashScreen),
    );
  }
}

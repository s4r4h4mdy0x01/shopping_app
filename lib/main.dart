import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/app.dart';
import 'package:shopping_app/core/di/dependency_injection.dart';

import 'core/router/app_router.dart';

void main() async {
  setupDependencyInjection();
  await ScreenUtil.ensureScreenSize();
  runApp(ShoppingApp(
    appRouter: AppRouter(),
  ));
}

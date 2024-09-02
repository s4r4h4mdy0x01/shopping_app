import 'package:flutter/material.dart';
import 'package:shopping_app/app.dart';

import 'core/router/app_router.dart';

void main() {
  runApp(ShoppingApp(
    appRouter: AppRouter(),
  ));
}

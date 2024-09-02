import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_app/core/helper/extensions.dart';
import '../../core/router/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadSplash();
  }

  Future<Timer> loadSplash() async {
    return Timer(
      const Duration(seconds: 5),
      onDoneLoading,
    );
  }

  onDoneLoading() {
    context.pushReplacementNamed(RoutesString.homeScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          "assets/animation/shoping.json",
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}

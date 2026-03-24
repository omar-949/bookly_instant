import 'package:bookly_instant/core/resources/app_color.dart';
import 'package:bookly_instant/core/resources/app_styles.dart';
import 'package:bookly_instant/features/splash/presentation/views/widgets/splash_body.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SplashBody()

    );
  }
}

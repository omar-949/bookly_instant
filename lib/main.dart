
import 'package:bookly_instant/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

import 'core/resources/app_color.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.darkBlue,
      ),
      home: SplashScreen(),
    );
  }
}

/*
- layers => presentation - domain - data
 */

import 'package:flutter/material.dart';

import '../../../../../core/resources/app_styles.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Welcome To Bookly Instant',
            style: AppStyles.textStyle18W700,
          ),
        ),
        MaterialButton(onPressed: (){
          Navigator.pushNamed(context, '/home');
        })
      ],
    );
  }
}

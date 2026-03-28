import 'package:flutter/material.dart';

import '../../../../../core/resources/app_styles.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});
   final name = "";
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Text('Home Screen Body', style: AppStyles.textStyle18W700)
      ],
    );
  }
}

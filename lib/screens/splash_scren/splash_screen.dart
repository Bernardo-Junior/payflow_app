import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avaliableHeight = MediaQuery.of(context).size.height;
    final avaliableWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              AppImages.union,
              width: avaliableWidth * 0.8,
              height: avaliableHeight * 0.8,
            ),
          ),
          Center(
            child: Image.asset(
              AppImages.logoFull,
              width: avaliableWidth * 0.5,
              height: avaliableHeight * 0.5,
            ),
          )
        ],
      ),
    );
  }
}

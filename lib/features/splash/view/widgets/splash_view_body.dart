import 'package:animate_do/animate_do.dart';
import 'package:bookly_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ZoomIn(
            duration: Duration(seconds: 1),
            child: Image.asset(AppImages.logoApp),
          ),
        ],
      ),
    );
  }
}

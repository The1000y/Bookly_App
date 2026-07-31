import 'package:animate_do/animate_do.dart';
import 'package:bookly_app/core/constants/app_images.dart';
import 'package:bookly_app/core/constants/app_strings.dart';
import 'package:bookly_app/features/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            child: Hero(tag: "logo", child: Image.asset(AppImages.logoApp)),
          ),
          SizedBox(height: 16),
          FadeInUp(
            onFinish: (direction) {
              navigateHomeView();
            },

            duration: Duration(milliseconds: 300),
            delay: Duration(seconds: 1),
            child: Text(AppStrings.appSlogan),
          ),
        ],
      ),
    );
  }

  Future<Null> navigateHomeView() {
    return Future.delayed(Duration(seconds: 1), () {
      Get.to(
        HomeView(),
        transition: Transition.fadeIn,
        curve: Curves.easeInOut,
        duration: Duration(milliseconds: 800),
      );
      // Navigator.pushReplacement(
      //   context,
      //   PageRouteBuilder(
      //     pageBuilder: (context, animation, secondaryAnimation) =>
      //         HomeView(),
      //     transitionDuration: Duration(milliseconds: 800),
      //     transitionsBuilder:
      //         (context, animation, secondaryAnimation, child) {
      //           return FadeTransition(
      //             // alwaysIncludeSemantics: true,
      //             opacity: animation,
      //             child: child,
      //           );
      //         },
      //   ),
      // );
    });
  }
}

import 'package:animate_do/animate_do.dart';
import 'package:bookly_app/core/constants/app_images.dart';
import 'package:bookly_app/core/constants/app_strings.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              navigateHomeView(context);
            },

            duration: Duration(milliseconds: 300),
            delay: Duration(seconds: 1),
            child: Text(AppStrings.appSlogan),
          ),
        ],
      ),
    );
  }

  Future<Null> navigateHomeView(BuildContext context) async {
    return Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).push(AppStrings.homeView , );
      // Get.to(
      // ()=>  HomeView(),
      //   transition: Transition.fadeIn,
      //   // curve: Curves.easeInOut,
      //   duration: Duration(milliseconds: 500),
      // );
      
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

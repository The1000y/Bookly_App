import 'package:bookly_app/core/constants/app_images.dart';
import 'package:bookly_app/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Hero(
          tag:  "logo",
          child: Image.asset(AppImages.logoApp , height: 30,)),
        IconButton(onPressed: () {
          GoRouter.of(context).push(AppStrings.searchView);
          
        }, icon: Icon(Icons.search) , iconSize: 30,)
      ],
    );
  }
}
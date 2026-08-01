import 'package:bookly_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

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
          
        }, icon: Icon(Icons.search) , iconSize: 30,)
      ],
    );
  }
}
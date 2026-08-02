
import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static const TextStyle size18WhiteSemiBold = TextStyle(
    fontSize: 18,
    color: AppColors.white,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle size20WhiteRegular= TextStyle(   
    fontSize: 20,
    color: AppColors.white,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle size14GrayRegular= TextStyle(   
    fontSize: 14,
    color: AppColors.white,
    fontWeight: FontWeight.normal,
  );
}

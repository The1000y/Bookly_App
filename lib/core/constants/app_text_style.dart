
import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:bookly_app/core/constants/app_strings.dart';
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
  static const TextStyle size14WhiteRegular= TextStyle(   
    fontSize: 14,
    color: AppColors.white,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle size16WhiteRegular= TextStyle(   
    fontSize: 16,
    color: AppColors.white,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle size30GrayRegular= TextStyle(   
    fontSize: 30,
    color: AppColors.white,
    fontWeight: FontWeight.normal,
    fontFamily: AppStrings.appFont,
  );
}

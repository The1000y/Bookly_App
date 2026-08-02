import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:bookly_app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class RateCustomWidget extends StatelessWidget {
  const RateCustomWidget({
    super.key, required this.wantPrice, required this.width,
  });
  final bool wantPrice ;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
     wantPrice?   Text(
          '19.99 €',
          style: AppTextStyle.size20WhiteRegular.copyWith(
            color: AppColors.white
          )
        ):Container(),
       SizedBox(width: width,),
        Icon(Icons.star, color: Colors.yellow, size: 20),
        SizedBox(width: 5),
        Text(
          '4.8',
          style: AppTextStyle.size18WhiteSemiBold.copyWith(
            color: AppColors.white,
          ),
        ),
        SizedBox(width: 5),
        Text(
      '(2390)',
      style: AppTextStyle.size14WhiteRegular.copyWith(
        fontWeight: FontWeight.bold,
        color: AppColors.white.withValues(alpha: 0.7)
      ),
    ),
      ],
    );
  }
}

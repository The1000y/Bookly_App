import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:bookly_app/core/constants/app_text_style.dart';
import 'package:bookly_app/core/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PriceAndPreviewItem extends StatelessWidget {
  const PriceAndPreviewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: AppColors.white,
              textWidget: Text(
                '19.99€',
                style: AppTextStyle.size20WhiteRegular.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              bottomLeft: 15,
              topLeft: 15,
              bottomRight: 0,
              topRight: 0,
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: AppColors.red,
              textWidget: Text(
                'Free Preview',
                style: AppTextStyle.size16WhiteRegular,
              ),
              bottomLeft: 0,
              topLeft: 0,
              bottomRight: 15,
              topRight: 15,
            ),
          ),
        ],
      ),
    );
  }
}

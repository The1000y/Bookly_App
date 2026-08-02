import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:bookly_app/core/constants/app_strings.dart';
import 'package:bookly_app/core/constants/app_text_style.dart';
import 'package:bookly_app/features/home/view/widgets/rate_custom.dart';
import 'package:bookly_app/features/home/view/widgets/feature_item_list.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FeatureItemListView(width: 0.29, height: 0.2  , wantIconPlay: false,),
        SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              
            children: [
              Text(
                'Harry Potter and the Goblet of Fire',
                style: AppTextStyle.size20WhiteRegular.copyWith(
                  fontFamily: AppStrings.appFont,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'J.K. Rowling',
                style: AppTextStyle.size14WhiteRegular.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.white.withValues(alpha: 0.7)
                ),
              ),
              SizedBox(height: 10),
              RateCustomWidget(wantPrice: true ,  width: 35,),
            ],
          ),
        ),
      ],
    );
  }
}


import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:bookly_app/core/constants/app_strings.dart';
import 'package:bookly_app/core/constants/app_text_style.dart';
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
                style: AppTextStyle.size14GrayRegular.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.white.withValues(alpha: 0.7)
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '19.99 €',
                    style: AppTextStyle.size20WhiteRegular.copyWith(
                      color: AppColors.white
                    )
                  ),
                  SizedBox(width: 35,),
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
                style: AppTextStyle.size14GrayRegular.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.white.withValues(alpha: 0.7)
                ),
              ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

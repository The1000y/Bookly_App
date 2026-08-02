
import 'package:bookly_app/core/constants/app_text_style.dart';
import 'package:bookly_app/features/home/view/widgets/best_seller_item.dart';
import 'package:bookly_app/features/home/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/view/widgets/feature_list_view_builder.dart';
import 'package:flutter/material.dart';

class HomwViewBody extends StatelessWidget {
  const HomwViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SizedBox(height: 45),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.26,
              child: FeatureListViewItemBuilder(),
            ),
            SizedBox(height: 50),
            Text('Best Seller', style: AppTextStyle.size18WhiteSemiBold),

            SizedBox(height: 20),
            BestSellerItem(),
          ],
        ),
      ),
    );
  }
}


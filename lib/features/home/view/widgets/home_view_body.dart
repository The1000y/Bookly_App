import 'package:bookly_app/core/constants/app_text_style.dart';
import 'package:bookly_app/features/home/view/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/view/widgets/feature_list_view_builder.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: CustomAppBar(),
                  ),
                  SizedBox(height: 45),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.26,
                    child: FeatureListViewItemBuilder(),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Best Seller',
                      style: AppTextStyle.size18WhiteSemiBold,
                    ),
                  ),
    
                  // SizedBox(height: 20),
                ],
              ),
            ),
          ]),
        ),
    
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}

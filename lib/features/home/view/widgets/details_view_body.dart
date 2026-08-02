import 'package:bookly_app/core/constants/app_text_style.dart';
import 'package:bookly_app/features/home/view/widgets/custom_details-app_bar.dart';
import 'package:bookly_app/features/home/view/widgets/feature_item_list.dart';
import 'package:bookly_app/features/home/view/widgets/price_and_preview_item.dart';
import 'package:bookly_app/features/home/view/widgets/rate_custom.dart';
import 'package:bookly_app/features/home/view/widgets/similer_;ist_view_items_books.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomDetailsAppBar(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          FeatureItemListView(width: 0.5, height: 0.31, wantIconPlay: false),
          SizedBox(height: 28),
          Text('The Jungle Book', style: AppTextStyle.size30GrayRegular),
          SizedBox(height: 7),
          Text(
            'by Rudyard Kipling',
            style: AppTextStyle.size18WhiteSemiBold.copyWith(
              fontStyle: FontStyle.italic,
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ),
          SizedBox(height: 16),
          RateCustomWidget(wantPrice: false, width: 0),
          SizedBox(height: 22),
          PriceAndPreviewItem(),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text(
                'You can also like',
                style: AppTextStyle.size16WhiteRegular.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          SizedBox(height: 16  ),
          SimillerListViewItemBooks(),
          SizedBox(height: 16,),  
        ],
      ),
    );
  }
}


import 'package:bookly_app/features/home/view/widgets/feature_item_list.dart';
import 'package:flutter/material.dart';

class FeatureListViewItemBuilder extends StatelessWidget {
  const FeatureListViewItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 18),
          child: FeatureItemListView(),
        );
      },
    );
  }
}

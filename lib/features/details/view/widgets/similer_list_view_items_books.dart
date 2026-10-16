import 'package:bookly_app/features/home/view/widgets/feature_item_list.dart';
import 'package:flutter/material.dart';

class SimillerListViewItemBooks extends StatelessWidget {
  const SimillerListViewItemBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left:  30),
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right:10.0),
              child: FeatureItemListView(
                width: 0.3,
                height: 0.1,
                wantIconPlay: false,
              ),
            );
          },
        ),
      ),
    );
  }
}

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
          children: [
            CustomAppBar(),
            SizedBox(height: 45),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.26,
              child: FeatureListViewItemBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}

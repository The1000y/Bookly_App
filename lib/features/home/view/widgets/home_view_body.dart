import 'package:bookly_app/features/home/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/view/widgets/custom_item_list.dart';
import 'package:flutter/material.dart';

class HomwViewBody extends StatelessWidget {
  const HomwViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: 15),
            CustomItemListView(),
          ],
        ),
      ),
    );
  }
}


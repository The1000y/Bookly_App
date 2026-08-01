import 'package:bookly_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class CustomItemListView extends StatelessWidget {
  const CustomItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 224,
      // width: 150,
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        image: DecorationImage(
          image: AssetImage(AppImages.bookimage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

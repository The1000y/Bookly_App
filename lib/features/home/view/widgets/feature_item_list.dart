
import 'package:bookly_app/core/constants/app_images.dart';
import 'package:bookly_app/features/home/view/widgets/custom-play_button.dart';
import 'package:flutter/material.dart';

class FeatureItemListView extends StatelessWidget {
  const FeatureItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.39,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          image: AssetImage(AppImages.bookimage),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: CustomPlayButton(),
        ),
      ),
    
    );
  }
}


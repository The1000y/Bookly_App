import 'package:bookly_app/core/constants/app_images.dart';
import 'package:bookly_app/features/home/view/widgets/custom-play_button.dart';
import 'package:flutter/material.dart';

class FeatureItemListView extends StatelessWidget {
  const FeatureItemListView({
    super.key,
    required this.width,
    required this.wantIconPlay,
    this.height = 0,
  });
  final double width;
  final double height;
  final bool wantIconPlay;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * width,
      height: MediaQuery.of(context).size.height * height,
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
          child:wantIconPlay? CustomPlayButton(): null,
        ),
      ),
    );
  }
}

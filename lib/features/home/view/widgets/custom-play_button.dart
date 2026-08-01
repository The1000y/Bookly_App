import 'dart:ui';

import 'package:bookly_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomPlayButton extends StatelessWidget {
  const CustomPlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 32, sigmaY: 32),
        child: CircleAvatar(
          radius: 22,
          backgroundColor: AppColors.white.withValues(alpha: 0.4),
          
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon( Icons.play_arrow  ,  color: AppColors.backGroundColorApp , size: 20,),
          ),
        ),
      ),
    );
  }
}

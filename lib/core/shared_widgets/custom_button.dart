import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,

    required this.textWidget,
    required this.bottomLeft,
    required this.topLeft,
    required this.bottomRight,
    required this.topRight,
  });

  final Color backgroundColor;

  final Widget textWidget;
  final double bottomLeft;
  final double topLeft;
  final double bottomRight;
  final double topRight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:50 ,
      width:150 ,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.only(
              bottomLeft: Radius.circular(bottomLeft),
              bottomRight: Radius.circular(bottomRight),
              topLeft: Radius.circular(topLeft),
              topRight: Radius.circular(topRight),
            ),
          ),
        ),
        child: textWidget,
      ),
    );
  }
}

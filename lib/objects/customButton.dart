import 'package:flutter/material.dart';
import 'package:smooth_corner/smooth_corner.dart';

import '../themes.dart';

class CustomButton extends StatelessWidget {
  final String lable;
  final Color buttonColor;
  final Color textColor;
  final double width;
  final double height;
  final double cornersRadius;
  final Function()? onTap;

  const CustomButton(
    {super.key,
    required this.lable,
    required this.buttonColor,
    required this.textColor,
    required this.width,
    required this.height,
    required this.cornersRadius,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return SmoothContainer(
      width: width,
      height: height,
      color: buttonColor,
      smoothness: 0.6,
      borderRadius: BorderRadius.circular(cornersRadius),
      alignment: Alignment.center,
      child: 
        Text(lable,
          style: subTitleStyle.copyWith(color:textColor), 
          textAlign: TextAlign.center,
        ),
    );
  }
}
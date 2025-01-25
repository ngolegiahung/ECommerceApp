import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = TSizes.cardRadiusLg,
    this.showBorder = false,
    this.borderColor = TColors.borderPrimary,
    this.backgroundColor = TColors.white,
    this.padding,
    this.margin,
    this.child,
  });

  final double? width, height;
  final double radius;
  final bool showBorder;
  final Color borderColor, backgroundColor;
  final EdgeInsetsGeometry? padding, margin;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}

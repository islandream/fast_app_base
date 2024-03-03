import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final double radius;
  final Color? backgroundColor;
  final EdgeInsets padding;

  const RoundedContainer({
    required this.child,
    this.radius = 20,
    this.backgroundColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor ?? context.appColors.buttonBackground,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: child);
  }
}

import 'package:flutter/material.dart';
import 'package:go_read_news_app_speed_code/theme/app_colors.dart';

class HomeSliderIndicatorItem extends StatelessWidget {
  final bool isActive;
  final double activeWidth;
  final double width;
  final EdgeInsets margin;
  const HomeSliderIndicatorItem({
    Key? key,
    required this.isActive,
    required this.activeWidth,
    required this.width,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: margin,
      width: isActive ? activeWidth : width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width),
        color: isActive ? Theme.of(context).primaryColor : AppColors.porcelain,
      ),
    );
  }
}

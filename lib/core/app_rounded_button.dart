import 'package:flutter/material.dart';
import 'package:go_read_news_app_speed_code/theme/app_colors.dart';

class AppRoundedButton extends StatelessWidget {
  final Function()? onTap;
  final IconData iconData;
  const AppRoundedButton({Key? key, this.onTap, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.athenasGray,
      borderRadius: BorderRadius.circular(56),
      child: InkWell(
        borderRadius: BorderRadius.circular(56),
        onTap: onTap,
        child: SizedBox(
          width: 56,
          height: 56,
          child: Icon(
            iconData,
          ),
        ),
      ),
    );
  }
}

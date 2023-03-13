import 'package:flutter/material.dart';
import 'package:go_read_news_app_speed_code/theme/app_colors.dart';

import '../../../core/utils/app_date_formatters.dart';
import '../pages/singe_news_item_page.dart';

class HomeSliderItem extends StatelessWidget {
  final bool isActive;
  final String imageAssetPath;
  final String category;
  final String title;
  final String content;
  final String authorImageAssetPath;

  final String author;
  final DateTime date;
  const HomeSliderItem({
    super.key,
    required this.isActive,
    required this.imageAssetPath,
    required this.category,
    required this.title,
    required this.author,
    required this.date,
    required this.content,
    required this.authorImageAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SingleNewsItemPage(
              title: title,
              content: content,
              author: author,
              category: category,
              authorImageAssetPath: authorImageAssetPath,
              imageAssetPath: imageAssetPath,
              date: date,
            ),
          ),
        );
      },
      child: FractionallySizedBox(
        widthFactor: 1.08,
        child: AnimatedScale(
          duration: const Duration(milliseconds: 400),
          scale: isActive ? 1 : 0.8,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Image.asset(
                  imageAssetPath,
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                  height: double.maxFinite,
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Chip(
                    label: Text(
                      category,
                      style: const TextStyle(color: AppColors.white),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.black08,
                        AppColors.black06,
                        AppColors.black00,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '$author · ${AppDateFormatters.mdY(date)}',
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(color: AppColors.white),
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              color: AppColors.white,
                            ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

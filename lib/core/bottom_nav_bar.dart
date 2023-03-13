import 'package:flutter/material.dart';
import 'package:go_read_news_app_speed_code/core/bottom_nav_bar_item.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int value) onTap;
  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(height: 1, thickness: 1),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavBarItem(
                text: 'Home',
                activeIconData: Icons.home,
                iconData: Icons.home_outlined,
                isActive: currentIndex == 0,
                onTap: () {
                  onTap(0);
                },
              ),
              BottomNavBarItem(
                text: 'Browse',
                activeIconData: Icons.language,
                iconData: Icons.language_outlined,
                isActive: currentIndex == 1,
                onTap: () {
                  onTap(1);
                },
              ),
              BottomNavBarItem(
                text: 'Bookmarks',
                activeIconData: Icons.bookmark,
                iconData: Icons.bookmark_outline,
                isActive: currentIndex == 2,
                onTap: () {
                  onTap(2);
                },
              ),
              BottomNavBarItem(
                text: 'Profile',
                activeIconData: Icons.person,
                iconData: Icons.person_outline,
                isActive: currentIndex == 3,
                onTap: () {
                  onTap(3);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

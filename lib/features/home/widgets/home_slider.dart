import 'package:flutter/material.dart';
import 'package:go_read_news_app_speed_code/dummy.dart';

import 'package:go_read_news_app_speed_code/features/home/widgets/home_slider_item.dart';

import 'home_slider_indicator_item.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  late final PageController _pageController;
  late final ScrollController _scrollController;
  late final double _indicatorsVisibleWidth;

  int _pageIndex = 0;

  final _displayIndicatorsCount = 5.0;
  final _indicatorWidth = 10.0;
  final _activeIndicatorWidth = 32.0;
  final _indicatorMargin = const EdgeInsets.symmetric(horizontal: 2);

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1000);
    _scrollController = ScrollController(initialScrollOffset: _calculateIndicatorOffset());

    _indicatorsVisibleWidth = _calculateIndicatorWidth();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  double _calculateIndicatorWidth() {
    final indicatorTotalWidth = _indicatorWidth + _indicatorMargin.left + _indicatorMargin.right;
    final activeIndicatorTotalWidth = _activeIndicatorWidth + _indicatorMargin.left + _indicatorMargin.right;
    return activeIndicatorTotalWidth + ((_displayIndicatorsCount - 1) * indicatorTotalWidth);
  }

  double _calculateIndicatorOffset() {
    final indicatorsCountBeforeCentral = (_displayIndicatorsCount - 1) / 2;
    final offset = (_indicatorWidth + _indicatorMargin.left + _indicatorMargin.right) *
        (_pageIndex + 999 - indicatorsCountBeforeCentral);

    return offset;
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          SizedBox(
            height: 235,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  _pageIndex = value % newsrItems.length;
                });
                _scrollController.animateTo(_calculateIndicatorOffset(),
                    duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
              },
              controller: _pageController,
              itemBuilder: (context, index) {
                final i = index % newsrItems.length;
                return HomeSliderItem(
                  isActive: _pageIndex == i,
                  imageAssetPath: newsrItems[i]['imageAssetPath']!,
                  category: newsrItems[i]['category']!,
                  title: newsrItems[i]['title']!,
                  content: newsrItems[i]['content']!,
                  author: newsrItems[i]['author']!,
                  authorImageAssetPath: newsrItems[i]['authorImageAssetPath']!,
                  date: DateTime.parse(newsrItems[i]['date']!),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            child: SizedBox(
              width: _indicatorsVisibleWidth,
              height: _indicatorWidth,
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final i = index % newsrItems.length;
                  // return Text(i.toString());
                  return HomeSliderIndicatorItem(
                    isActive: index == _pageIndex + 999,
                    activeWidth: _activeIndicatorWidth,
                    width: _indicatorWidth,
                    margin: _indicatorMargin,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

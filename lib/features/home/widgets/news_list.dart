import 'package:flutter/material.dart';
import 'package:go_read_news_app_speed_code/dummy.dart';

import 'news_list_item.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, i) => NewsListItem(
          imageAssetPath: newsrItems[i]['imageAssetPath']!,
          category: newsrItems[i]['category']!,
          title: newsrItems[i]['title']!,
          content: newsrItems[i]['content']!,
          author: newsrItems[i]['author']!,
          authorImageAssetPath: newsrItems[i]['authorImageAssetPath']!,
          date: DateTime.parse(newsrItems[i]['date']!),
        ),
        childCount: newsrItems.length,
      ),
    );
  }
}

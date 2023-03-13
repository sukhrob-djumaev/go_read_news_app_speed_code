import 'package:flutter/material.dart';
import 'package:go_read_news_app_speed_code/features/home/widgets/home_slider.dart';

import '../widgets/home_heading.dart';
import '../widgets/home_top_buttons.dart';
import '../widgets/news_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const HomeTopButtons(),
            HomeHeading(
              title: 'Breaking News',
              trailing: TextButton(
                child: const Text('View all'),
                onPressed: () {},
              ),
            ),
            const HomeSlider(),
            HomeHeading(
              title: 'Recommendation',
              trailing: TextButton(
                child: const Text('View all'),
                onPressed: () {},
              ),
            ),
            const NewsList(),
          ],
        ),
      ),
    );
  }
}

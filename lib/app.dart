import 'package:flutter/material.dart';
import 'package:go_read_news_app_speed_code/theme/app_colors.dart';

import 'core/main_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoRead - News App',
      theme: ThemeData(
        primarySwatch: AppColors.azureRadianceSwatch,
        primaryColor: AppColors.azureRadiance,
        scaffoldBackgroundColor: AppColors.white,
      ),
      home: const MainPage(),
    );
  }
}

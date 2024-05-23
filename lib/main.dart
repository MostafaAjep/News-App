// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/pages/splash_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: const SplashPage(),
    );
  }
}

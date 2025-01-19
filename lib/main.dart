import 'package:flutter/material.dart';
import 'package:islami/features/layout_pages/pages/layout_page.dart';
import 'package:islami/features/layout_pages/pages/quran_pages/quran_details_view.dart';
import 'package:islami/features/on_board/onboarding.dart';
import 'package:islami/features/splash/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (_) {
          return SplashPage();
        },
        Onboarding.routeName: (_) {
          return Onboarding();
        },
        LayoutPage.routeName: (_) {
          return LayoutPage();
        },
        QuranDetailsView.routeName: (_) {
          return QuranDetailsView();
        },
      },
    );
  }
}

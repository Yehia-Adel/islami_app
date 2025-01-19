import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/features/layout_pages/pages/hadith_pages/hadith_page.dart';
import 'package:islami/features/layout_pages/pages/quran_pages/quran_page.dart';
import 'package:islami/features/layout_pages/pages/radio_pages/radio_page.dart';
import 'package:islami/features/layout_pages/pages/sebha_pages/sebha_page.dart';
import 'package:islami/features/layout_pages/pages/time_pages/time_page.dart';
import 'package:islami/features/layout_pages/widgets/nav_bar_item.dart';

class LayoutPage extends StatefulWidget {
  static String routeName = "/layout";

  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  List<Widget> pages = [
    QuranPage(),
    HadithPage(),
    SebhaPage(),
    RadioPage(),
    TimePage()
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          backgroundColor: AppColors.primaryColor,
          fixedColor: AppColors.white,
          items: [
            BottomNavigationBarItem(
                icon: NavBarItem(
                    iconPath: AppAssets.quranIcon,
                    selectedIndex: selectedIndex,
                    iconIndex: 0),
                label: "Quran"),
            BottomNavigationBarItem(
                icon: NavBarItem(
                    iconPath: AppAssets.hadithIcon,
                    selectedIndex: selectedIndex,
                    iconIndex: 1),
                label: "Hadith"),
            BottomNavigationBarItem(
                icon: NavBarItem(
                    iconPath: AppAssets.sebhaIcon,
                    selectedIndex: selectedIndex,
                    iconIndex: 2),
                label: "Sebha"),
            BottomNavigationBarItem(
                icon: NavBarItem(
                    iconPath: AppAssets.radioIcon,
                    selectedIndex: selectedIndex,
                    iconIndex: 3),
                label: "Radio"),
            BottomNavigationBarItem(
                icon: NavBarItem(
                    iconPath: AppAssets.timeIcon,
                    selectedIndex: selectedIndex,
                    iconIndex: 4),
                label: "Time"),
          ]),
      body: pages[selectedIndex],
    );
  }
}

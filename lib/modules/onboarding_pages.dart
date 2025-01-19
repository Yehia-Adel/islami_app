import 'package:islami/core/constants/app_assets.dart';

class Pages {
  String title;
  String image;
  String name;
  String description;

  Pages(this.title, this.image, this.name, this.description);

  static List<Pages> pages = [
    Pages(AppAssets.onboardingUpper, AppAssets.onboardingOne,
        "Welcome To Islmi App", ""),
    Pages(
        AppAssets.onboardingUpper,
        AppAssets.onboardingTwo,
        "Welcome To Islmi App",
        "We Are Very Excited To Have You In Our\n Community"),
    Pages(AppAssets.onboardingUpper, AppAssets.onboardingTree,
        "Reading the Quran", "Read, and your Lord is the Most Generous"),
    Pages(AppAssets.onboardingUpper, AppAssets.onboardingFour, "Bearish",
        "Praise the name of your Lord, the Most\nHigh"),
    Pages(
        AppAssets.onboardingUpper,
        AppAssets.onboardingFive,
        "Holy Quran Radio",
        "You can listen to the Holy Quran Radio\nthrough the application for free and easily"),
  ];
}

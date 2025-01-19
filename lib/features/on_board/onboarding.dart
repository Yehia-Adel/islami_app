import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/features/layout_pages/pages/layout_page.dart';
// import 'package:islami/modules/onboarding_pages.dart';

class Onboarding extends StatelessWidget {
  static String routeName = "onBoard";

  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      dotsDecorator: DotsDecorator(
        activeColor: AppColors.primaryColor,
      ),
      globalBackgroundColor: AppColors.secondaryColor,
      pages: [
        PageViewModel(
            decoration: PageDecoration(pageColor: AppColors.secondaryColor),
            titleWidget: Image.asset(AppAssets.onboardingUpper),
            bodyWidget: Column(
              children: [
                Image.asset(AppAssets.onboardingOne),
                SizedBox(
                  height: 20,
                ),
                Text("Welcome To Islmi App",
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ],
            )),
        PageViewModel(
            decoration: PageDecoration(pageColor: AppColors.secondaryColor),
            titleWidget: Image.asset(AppAssets.onboardingUpper),
            bodyWidget: Column(
              children: [
                Image.asset(AppAssets.onboardingTwo),
                SizedBox(
                  height: 20,
                ),
                Text("Welcome To Islmi App",
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            )),
        PageViewModel(
            decoration: PageDecoration(pageColor: AppColors.secondaryColor),
            titleWidget: Image.asset(AppAssets.onboardingUpper),
            bodyWidget: Column(
              children: [
                Image.asset(AppAssets.onboardingTree),
                SizedBox(
                  height: 20,
                ),
                Text("Welcome To Islmi App",
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ],
            )),
        PageViewModel(
            decoration: PageDecoration(pageColor: AppColors.secondaryColor),
            titleWidget: Image.asset(AppAssets.onboardingUpper),
            bodyWidget: Column(
              children: [
                Image.asset(AppAssets.onboardingFour),
                SizedBox(
                  height: 20,
                ),
                Text("Welcome To Islmi App",
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ],
            )),
        PageViewModel(
            decoration: PageDecoration(pageColor: AppColors.secondaryColor),
            titleWidget: Image.asset(AppAssets.onboardingUpper),
            bodyWidget: Column(
              children: [
                Image.asset(AppAssets.onboardingFive),
                SizedBox(
                  height: 20,
                ),
                Text("Welcome To Islmi App",
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ],
            )),
      ],
      showSkipButton: true,
      skip: const Text(
        "Back",
        style: TextStyle(color: Colors.amberAccent),
      ),
      showNextButton: true,
      next: const Text(
        "Next",
        style: TextStyle(color: Colors.amberAccent),
      ),
      done: const Text(
        "Finish",
        style: TextStyle(color: Colors.amberAccent),
      ),
      onDone: () {
        Navigator.of(context).pushReplacementNamed(LayoutPage.routeName);
      },
    );
  }
}

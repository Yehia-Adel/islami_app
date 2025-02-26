import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/features/on_board/onboarding.dart';

class SplashPage extends StatefulWidget {
  static Duration _duration = Duration(milliseconds: 1750);
  static String routeName = "splash";

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Onboarding.routeName);
    });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.splashBackground), fit: BoxFit.fill)),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: size.height * .25),
            child: Align(
                alignment: Alignment.centerLeft,
                child: FadeInLeft(
                  duration: Duration(milliseconds: 1750),
                  child: Image.asset(
                    AppAssets.splashLeft,
                    height: size.height * .25,
                  ),
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * .25),
            child: Align(
                alignment: Alignment.centerRight,
                child: FadeInRight(
                  duration: Duration(milliseconds: 1750),
                  child: Image.asset(
                    AppAssets.splashRight,
                    height: size.height * .25,
                  ),
                )),
          ),
          Align(
            alignment: Alignment.topRight,
            child: FadeInDown(
              duration: Duration(milliseconds: 1750),
              child: Image.asset(
                AppAssets.splashGlow,
                height: size.height * .35,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ZoomIn(
              duration: Duration(milliseconds: 1750),
              child: Image.asset(
                AppAssets.splashLogo,
                height: size.height * .16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * .22),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                AppAssets.splashIslami,
                height: size.height * .06,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: size.height * .05),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FadeInUp(
                duration: Duration(milliseconds: 1750),
                child: Image.asset(
                  AppAssets.splashBottom,
                  height: size.height * .12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

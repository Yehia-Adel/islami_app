import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_colors.dart';
import '../../../../core/constants/app_assets.dart';

class SebhaPage extends StatefulWidget {
  const SebhaPage({super.key});

  @override
  State<SebhaPage> createState() => _SebhaPageState();
}

class _SebhaPageState extends State<SebhaPage> {
  double rotationAngle = 0.0;

  void _rotateWidget() {
    setState(() {
      // Increment the rotation angle by 45 degrees (converted to radians)
      rotationAngle += 12 * pi / 180;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.sebhaBackground), fit: BoxFit.fill)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
            child: Image.asset(AppAssets.layoutTop),
          ),
          Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
              style: TextStyle(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 34)),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: _rotateWidget, // Rotate on tap
              child: Transform.rotate(
                  angle: rotationAngle, // Apply the rotation angle
                  child: Image.asset(
                    "assets/images/Sebha-rotate.png",
                    width: 320,
                  )))
        ],
      ),
    );
  }
}

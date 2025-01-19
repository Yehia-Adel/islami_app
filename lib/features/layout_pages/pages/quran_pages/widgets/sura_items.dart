import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_colors.dart';

import '../../../../../modules/recent_data.dart';

class SuraItems extends StatelessWidget {
  final SuraData recentData;

  const SuraItems({super.key, required this.recentData});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Container(
            alignment: Alignment.center,
            height: 52,
            width: 52,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/arabic-art-svgrepo-com 1.png",
                    ),
                    fit: BoxFit.cover)),
            child: Text("${recentData.suraNumber}",
                style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(recentData.suraAR,
                style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
            Text(recentData.suraVerse,
                style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
          ],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(recentData.suraAR,
              style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
      ],
    );
  }
}

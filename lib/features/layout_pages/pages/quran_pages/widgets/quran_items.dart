import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/modules/recent_data.dart';

class QuranItems extends StatelessWidget {
  final SuraData recentData;

  const QuranItems({super.key, required this.recentData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        margin: EdgeInsets.only(left: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Text(recentData.suraEG,
                    style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24)),
                Text(recentData.suraAR,
                    style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24)),
                Text(recentData.suraVerse,
                    style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ],
            ),
            Image(image: AssetImage("assets/images/quran_item_photo.png"))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/modules/hadith_data.dart';

class HadithItemCard extends StatelessWidget {
  final HadithData hadithData;

  const HadithItemCard({super.key, required this.hadithData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10, bottom: 20),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image(
              image: AssetImage("assets/images/Mask group-left.png"),
              color: AppColors.secondaryColor,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image(
              image: AssetImage("assets/images/Mask group-right.png"),
              color: AppColors.secondaryColor,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image(
              image: AssetImage("assets/images/Mask group-bottom.png"),
              color: AppColors.secondaryColor,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                hadithData.titleHadith,
                style: TextStyle(
                    color: AppColors.secondaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      hadithData.contentHadith,
                      style: TextStyle(
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}

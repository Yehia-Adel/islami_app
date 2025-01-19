import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/modules/hadith_data.dart';

class HadithItemCard extends StatelessWidget {
  final HadithData hadithData;

  const HadithItemCard({super.key, required this.hadithData});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      width: 300,
      height: 650,
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
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    hadithData.titleHadith,
                    style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(hadithData.contentHadith,
                              style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        )),
              )
            ],
          )
        ],
      ),
    );
  }
}

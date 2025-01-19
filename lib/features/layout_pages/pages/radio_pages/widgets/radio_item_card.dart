import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_colors.dart';

class RadioItemCard extends StatelessWidget {
  const RadioItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.primaryColor,
          image: DecorationImage(
              image: AssetImage(
                "assets/images/radio.backg.png",
              ),
              fit: BoxFit.cover)),
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 15),
      padding: EdgeInsets.all(15),
      height: 100,
      width: 390,
      child: Column(
        children: [
          Text(
            "radio",
            style: TextStyle(
                color: AppColors.secondaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.play_arrow_rounded,
            color: AppColors.secondaryColor,
          )
        ],
      ),
    );
  }
}

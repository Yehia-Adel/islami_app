import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/modules/time_salah.dart';

class TimeItemCard extends StatelessWidget {
  final Prayer timeSalah;

  const TimeItemCard({super.key, required this.timeSalah});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      // width: 100,
      // height: 130,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            timeSalah.name,
            style: TextStyle(
                color: AppColors.textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          Text(
            timeSalah.time,
            style: TextStyle(
                color: AppColors.textColor,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          Text(
            timeSalah.period,
            style: TextStyle(
                color: AppColors.textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

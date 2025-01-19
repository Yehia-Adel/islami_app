import 'package:flutter/material.dart';
import 'package:islami/features/layout_pages/pages/time_pages/widgets/time_item_card.dart';
import 'package:islami/modules/time_salah.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';

class TimePage extends StatelessWidget {
  TimePage({super.key});

  List<Prayer> salah = [
    Prayer('Fajr', '05:30', 'AM'),
    Prayer('Dhuhr', '12:15', 'PM'),
    Prayer('Asr', '03:30', 'PM'),
    Prayer('Maghrib', '06:00', 'PM'),
    Prayer('Isha', '07:30', 'PM')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.timeBackground), fit: BoxFit.fill)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
            child: Image.asset(AppAssets.layoutTop),
          ),
          Container(
            height: 240,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: salah.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      TimeItemCard(timeSalah: salah[index])),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Azkar',
            style: TextStyle(
                color: AppColors.textColor,
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/evening-azkar.png',
                width: 150,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/images/morning-azkar.png',
                width: 150,
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami/features/layout_pages/pages/radio_pages/widgets/radio_item_card.dart';
import '../../../../core/constants/app_assets.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.radioBackground), fit: BoxFit.fill)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
            child: Image.asset(AppAssets.layoutTop),
          ),
          Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) => RadioItemCard()))
        ],
      ),
    );
  }
}

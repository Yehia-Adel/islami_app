import 'package:flutter/material.dart';
import 'package:islami/modules/hadith_data.dart';

class Test extends StatelessWidget {
  final HadithData hadithData;

  const Test({super.key, required this.hadithData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(hadithData.titleHadith),
        Text(hadithData.contentHadith),
      ],
    );
  }
}

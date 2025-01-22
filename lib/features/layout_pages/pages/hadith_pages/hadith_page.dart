import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/features/layout_pages/pages/hadith_pages/widgets/hadith_item_card.dart';
import 'package:islami/modules/hadith_data.dart';

class HadithPage extends StatefulWidget {
  const HadithPage({super.key});

  @override
  State<HadithPage> createState() => _HadithPageState();
}

class _HadithPageState extends State<HadithPage> {
  List<HadithData> hadithDataList = [];

  @override
  Widget build(BuildContext context) {
    if (hadithDataList.isEmpty) loadHadithData();

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.hadithBackground), fit: BoxFit.fill)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
            child: Image.asset(AppAssets.layoutTop),
          ),
          Expanded(
            child: CarouselSlider(
                items: hadithDataList.map(
                  (e) {
                    return HadithItemCard(
                      hadithData: e,
                    );
                  },
                ).toList(),
                options: CarouselOptions(
                height: 450,
                aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
              ),
            ),
          )
        ],
      ),
    );
  }

  loadHadithData() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allSingleHadith = content.split('#');
    for (var element in allSingleHadith) {
      String singleHadith = element.trim();

      int index = singleHadith.indexOf('\n');

      String titleHadith = singleHadith.substring(0, index);
      String contentHadith = singleHadith.substring(index + 1);

      var hadithData =
          HadithData(titleHadith: titleHadith, contentHadith: contentHadith);

      hadithDataList.add(hadithData);

      setState(() {});
    }
  }
}

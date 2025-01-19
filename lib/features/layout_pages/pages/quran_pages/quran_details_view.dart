import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/modules/recent_data.dart';

class QuranDetailsView extends StatefulWidget {
  static String routeName = 'QuranDetailsView';

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraData;
    loadData(args.suraNumber);

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(args.suraEG,
            style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.primaryColor),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child:
                Image(image: AssetImage("assets/images/Mask group-left.png")),
          ),
          Align(
            alignment: Alignment.topRight,
            child:
                Image(image: AssetImage("assets/images/Mask group-right.png")),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child:
                Image(image: AssetImage("assets/images/Mask group-bottom.png")),
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    args.suraAR,
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: versesList.length,
                  itemBuilder: (context, index) => Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text(
                        versesList[index],
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  loadData(int suraID) async {
    String content = await rootBundle.loadString("assets/files/$suraID.txt");
    setState(() {
      versesList = content.split("\n");
    });
  }
}

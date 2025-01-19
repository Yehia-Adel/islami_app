import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/features/layout_pages/pages/quran_pages/quran_details_view.dart';
import 'package:islami/features/layout_pages/pages/quran_pages/widgets/quran_items.dart';
import 'package:islami/features/layout_pages/pages/quran_pages/widgets/sura_items.dart';
import 'package:islami/modules/recent_data.dart';

class QuranPage extends StatelessWidget {
  QuranPage({super.key});

  List<SuraData> recentDataList = [
    SuraData(
        suraNumber: 1, suraEG: "Al-Fatiha", suraAR: "الفاتحة", suraVerse: "7"),
    SuraData(
        suraNumber: 2,
        suraEG: "Al-Baqarah",
        suraAR: "البقرة",
        suraVerse: "286"),
    SuraData(
        suraNumber: 3,
        suraEG: "Aal-E-Imran",
        suraAR: "آل عمران",
        suraVerse: "200"),
    SuraData(
        suraNumber: 4, suraEG: "An-Nisa", suraAR: "النساء", suraVerse: "176"),
    SuraData(
        suraNumber: 5,
        suraEG: "Al-Maidah",
        suraAR: "المائدة",
        suraVerse: "120"),
    SuraData(
        suraNumber: 6, suraEG: "Al-Anam", suraAR: "الأنعام", suraVerse: "165"),
    SuraData(
        suraNumber: 7, suraEG: "Al-Araf", suraAR: "الأعراف", suraVerse: "206"),
    SuraData(
        suraNumber: 8, suraEG: "Al-Anfal", suraAR: "الأنفال", suraVerse: "75"),
    SuraData(
        suraNumber: 9, suraEG: "At-Tawbah", suraAR: "التوبة", suraVerse: "129"),
    SuraData(suraNumber: 10, suraEG: "Yunus", suraAR: "يونس", suraVerse: "109"),
    SuraData(suraNumber: 11, suraEG: "Hud", suraAR: "هود", suraVerse: "123"),
    SuraData(suraNumber: 12, suraEG: "Yusuf", suraAR: "يوسف", suraVerse: "111"),
    SuraData(
        suraNumber: 13, suraEG: "Ar-Rad", suraAR: "الرعد", suraVerse: "43"),
    SuraData(
        suraNumber: 14, suraEG: "Ibrahim", suraAR: "إبراهيم", suraVerse: "52"),
    SuraData(
        suraNumber: 15, suraEG: "Al-Hijr", suraAR: "الحجر", suraVerse: "99"),
    SuraData(
        suraNumber: 16, suraEG: "An-Nahl", suraAR: "النحل", suraVerse: "128"),
    SuraData(
        suraNumber: 17, suraEG: "Al-Isra", suraAR: "الإسراء", suraVerse: "111"),
    SuraData(
        suraNumber: 18, suraEG: "Al-Kahf", suraAR: "الكهف", suraVerse: "110"),
    SuraData(suraNumber: 19, suraEG: "Maryam", suraAR: "مريم", suraVerse: "98"),
    SuraData(suraNumber: 20, suraEG: "Taha", suraAR: "طه", suraVerse: "135"),
    SuraData(
        suraNumber: 21,
        suraEG: "Al-Anbiya",
        suraAR: "الأنبياء",
        suraVerse: "112"),
    SuraData(
        suraNumber: 22, suraEG: "Al-Hajj", suraAR: "الحج", suraVerse: "78"),
    SuraData(
        suraNumber: 23,
        suraEG: "Al-Muminun",
        suraAR: "المؤمنون",
        suraVerse: "118"),
    SuraData(
        suraNumber: 24, suraEG: "An-Nur", suraAR: "النور", suraVerse: "64"),
    SuraData(
        suraNumber: 25,
        suraEG: "Al-Furqan",
        suraAR: "الفرقان",
        suraVerse: "77"),
    SuraData(
        suraNumber: 26,
        suraEG: "Ash-Shuara",
        suraAR: "الشعراء",
        suraVerse: "227"),
    SuraData(
        suraNumber: 27, suraEG: "An-Naml", suraAR: "النمل", suraVerse: "93"),
    SuraData(
        suraNumber: 28, suraEG: "Al-Qasas", suraAR: "القصص", suraVerse: "88"),
    SuraData(
        suraNumber: 29,
        suraEG: "Al-Ankabut",
        suraAR: "العنكبوت",
        suraVerse: "69"),
    SuraData(
        suraNumber: 30, suraEG: "Ar-Rum", suraAR: "الروم", suraVerse: "60"),
    SuraData(
        suraNumber: 31, suraEG: "Luqman", suraAR: "لقمان", suraVerse: "34"),
    SuraData(
        suraNumber: 32, suraEG: "As-Sajda", suraAR: "السجدة", suraVerse: "30"),
    SuraData(
        suraNumber: 33, suraEG: "Al-Ahzab", suraAR: "الأحزاب", suraVerse: "73"),
    SuraData(suraNumber: 34, suraEG: "Saba", suraAR: "سبأ", suraVerse: "54"),
    SuraData(suraNumber: 35, suraEG: "Fatir", suraAR: "فاطر", suraVerse: "45"),
    SuraData(suraNumber: 36, suraEG: "Ya-Sin", suraAR: "يس", suraVerse: "83"),
    SuraData(
        suraNumber: 37,
        suraEG: "As-Saffat",
        suraAR: "الصافات",
        suraVerse: "182"),
    SuraData(suraNumber: 38, suraEG: "Sad", suraAR: "ص", suraVerse: "88"),
    SuraData(
        suraNumber: 39, suraEG: "Az-Zumar", suraAR: "الزمر", suraVerse: "75"),
    SuraData(suraNumber: 40, suraEG: "Ghafir", suraAR: "غافر", suraVerse: "85"),
    SuraData(
        suraNumber: 41, suraEG: "Fussilat", suraAR: "فصلت", suraVerse: "54"),
    SuraData(
        suraNumber: 42, suraEG: "Ash-Shura", suraAR: "الشورى", suraVerse: "53"),
    SuraData(
        suraNumber: 43,
        suraEG: "Az-Zukhruf",
        suraAR: "الزخرف",
        suraVerse: "89"),
    SuraData(
        suraNumber: 44, suraEG: "Ad-Dukhan", suraAR: "الدخان", suraVerse: "59"),
    SuraData(
        suraNumber: 45,
        suraEG: "Al-Jathiya",
        suraAR: "الجاثية",
        suraVerse: "37"),
    SuraData(
        suraNumber: 46, suraEG: "Al-Ahqaf", suraAR: "الأحقاف", suraVerse: "35"),
    SuraData(
        suraNumber: 47, suraEG: "Muhammad", suraAR: "محمد", suraVerse: "38"),
    SuraData(
        suraNumber: 48, suraEG: "Al-Fath", suraAR: "الفتح", suraVerse: "29"),
    SuraData(
        suraNumber: 49,
        suraEG: "Al-Hujurat",
        suraAR: "الحجرات",
        suraVerse: "18"),
    SuraData(suraNumber: 50, suraEG: "Qaf", suraAR: "ق", suraVerse: "45"),
    SuraData(
        suraNumber: 51,
        suraEG: "Adh-Dhariyat",
        suraAR: "الذاريات",
        suraVerse: "60"),
    SuraData(
        suraNumber: 52, suraEG: "At-Tur", suraAR: "الطور", suraVerse: "49"),
    SuraData(
        suraNumber: 53, suraEG: "An-Najm", suraAR: "النجم", suraVerse: "62"),
    SuraData(
        suraNumber: 54, suraEG: "Al-Qamar", suraAR: "القمر", suraVerse: "55"),
    SuraData(
        suraNumber: 55, suraEG: "Ar-Rahman", suraAR: "الرحمن", suraVerse: "78"),
    SuraData(
        suraNumber: 56, suraEG: "Al-Waqia", suraAR: "الواقعة", suraVerse: "96"),
    SuraData(
        suraNumber: 57, suraEG: "Al-Hadid", suraAR: "الحديد", suraVerse: "29"),
    SuraData(
        suraNumber: 58,
        suraEG: "Al-Mujadila",
        suraAR: "المجادلة",
        suraVerse: "22"),
    SuraData(
        suraNumber: 59, suraEG: "Al-Hashr", suraAR: "الحشر", suraVerse: "24"),
    SuraData(
        suraNumber: 60,
        suraEG: "Al-Mumtahina",
        suraAR: "الممتحنة",
        suraVerse: "13"),
    SuraData(
        suraNumber: 61, suraEG: "As-Saff", suraAR: "الصف", suraVerse: "14"),
    SuraData(
        suraNumber: 62, suraEG: "Al-Jumua", suraAR: "الجمعة", suraVerse: "11"),
    SuraData(
        suraNumber: 63,
        suraEG: "Al-Munafiqun",
        suraAR: "المنافقون",
        suraVerse: "11"),
    SuraData(
        suraNumber: 64,
        suraEG: "At-Taghabun",
        suraAR: "التغابن",
        suraVerse: "18"),
    SuraData(
        suraNumber: 65, suraEG: "At-Talaq", suraAR: "الطلاق", suraVerse: "12"),
    SuraData(
        suraNumber: 66,
        suraEG: "At-Tahrim",
        suraAR: "التحريم",
        suraVerse: "12"),
    SuraData(
        suraNumber: 67, suraEG: "Al-Mulk", suraAR: "الملك", suraVerse: "30"),
    SuraData(
        suraNumber: 68, suraEG: "Al-Qalam", suraAR: "القلم", suraVerse: "52"),
    SuraData(
        suraNumber: 69, suraEG: "Al-Haaqqa", suraAR: "الحاقة", suraVerse: "52"),
    SuraData(
        suraNumber: 70,
        suraEG: "Al-Maarij",
        suraAR: "المعارج",
        suraVerse: "44"),
    SuraData(suraNumber: 71, suraEG: "Nuh", suraAR: "نوح", suraVerse: "28"),
    SuraData(
        suraNumber: 72, suraEG: "Al-Jinn", suraAR: "الجن", suraVerse: "28"),
    SuraData(
        suraNumber: 73,
        suraEG: "Al-Muzzammil",
        suraAR: "المزمل",
        suraVerse: "20"),
    SuraData(
        suraNumber: 74,
        suraEG: "Al-Muddaththir",
        suraAR: "المدثر",
        suraVerse: "56"),
    SuraData(
        suraNumber: 75,
        suraEG: "Al-Qiyama",
        suraAR: "القيامة",
        suraVerse: "40"),
    SuraData(
        suraNumber: 76, suraEG: "Al-Insan", suraAR: "الإنسان", suraVerse: "31"),
    SuraData(
        suraNumber: 77,
        suraEG: "Al-Mursalat",
        suraAR: "المرسلات",
        suraVerse: "50"),
    SuraData(
        suraNumber: 78, suraEG: "An-Naba", suraAR: "النبأ", suraVerse: "40"),
    SuraData(
        suraNumber: 79,
        suraEG: "An-Nazi'at",
        suraAR: "النازعات",
        suraVerse: "46"),
    SuraData(suraNumber: 80, suraEG: "Abasa", suraAR: "عبس", suraVerse: "42"),
    SuraData(
        suraNumber: 81,
        suraEG: "At-Takwir",
        suraAR: "التكوير",
        suraVerse: "29"),
    SuraData(
        suraNumber: 82,
        suraEG: "Al-Infitar",
        suraAR: "الإنفطار",
        suraVerse: "19"),
    SuraData(
        suraNumber: 83,
        suraEG: "Al-Mutaffifin",
        suraAR: "المطففين",
        suraVerse: "36"),
    SuraData(
        suraNumber: 84,
        suraEG: "Al-Inshiqaq",
        suraAR: "الإنشقاق",
        suraVerse: "25"),
    SuraData(
        suraNumber: 85, suraEG: "Al-Buruj", suraAR: "البروج", suraVerse: "22"),
    SuraData(
        suraNumber: 86, suraEG: "At-Tariq", suraAR: "الطارق", suraVerse: "17"),
    SuraData(
        suraNumber: 87, suraEG: "Al-Ala", suraAR: "الأعلى", suraVerse: "19"),
    SuraData(
        suraNumber: 88,
        suraEG: "Al-Ghashiya",
        suraAR: "الغاشية",
        suraVerse: "26"),
    SuraData(
        suraNumber: 89, suraEG: "Al-Fajr", suraAR: "الفجر", suraVerse: "30"),
    SuraData(
        suraNumber: 90, suraEG: "Al-Balad", suraAR: "البلد", suraVerse: "20"),
    SuraData(
        suraNumber: 91, suraEG: "Ash-Shams", suraAR: "الشمس", suraVerse: "15"),
    SuraData(
        suraNumber: 92, suraEG: "Al-Lail", suraAR: "الليل", suraVerse: "21"),
    SuraData(
        suraNumber: 93, suraEG: "Ad-Duhaa", suraAR: "الضحى", suraVerse: "11"),
    SuraData(
        suraNumber: 94, suraEG: "Ash-Sharh", suraAR: "الشرح", suraVerse: "8"),
    SuraData(suraNumber: 95, suraEG: "At-Tin", suraAR: "التين", suraVerse: "8"),
    SuraData(
        suraNumber: 96, suraEG: "Al-Alaq", suraAR: "العلق", suraVerse: "19"),
    SuraData(
        suraNumber: 97, suraEG: "Al-Qadr", suraAR: "القدر", suraVerse: "5"),
    SuraData(
        suraNumber: 98, suraEG: "Al-Bayyina", suraAR: "البينة", suraVerse: "8"),
    SuraData(
        suraNumber: 99,
        suraEG: "Az-Zalzala",
        suraAR: "الزلزلة",
        suraVerse: "8"),
    SuraData(
        suraNumber: 100,
        suraEG: "Al-Adiyat",
        suraAR: "العاديات",
        suraVerse: "11"),
    SuraData(
        suraNumber: 101,
        suraEG: "Al-Qaria",
        suraAR: "القارعة",
        suraVerse: "11"),
    SuraData(
        suraNumber: 102,
        suraEG: "At-Takathur",
        suraAR: "التكاثر",
        suraVerse: "8"),
    SuraData(
        suraNumber: 103, suraEG: "Al-Asr", suraAR: "العصر", suraVerse: "3"),
    SuraData(
        suraNumber: 104, suraEG: "Al-Humaza", suraAR: "الهمزة", suraVerse: "9"),
    SuraData(
        suraNumber: 105, suraEG: "Al-Fil", suraAR: "الفيل", suraVerse: "5"),
    SuraData(
        suraNumber: 106, suraEG: "Quraish", suraAR: "قريش", suraVerse: "4"),
    SuraData(
        suraNumber: 107, suraEG: "Al-Ma'un", suraAR: "الماعون", suraVerse: "7"),
    SuraData(
        suraNumber: 108,
        suraEG: "Al-Kawthar",
        suraAR: "الكوثر",
        suraVerse: "3"),
    SuraData(
        suraNumber: 109,
        suraEG: "Al-Kafiroon",
        suraAR: "الكافرون",
        suraVerse: "6"),
    SuraData(
        suraNumber: 110, suraEG: "An-Nasr", suraAR: "النصر", suraVerse: "3"),
    SuraData(
        suraNumber: 111, suraEG: "Al-Masad", suraAR: "المسد", suraVerse: "5"),
    SuraData(
        suraNumber: 112,
        suraEG: "Al-Ikhlas",
        suraAR: "الإخلاص",
        suraVerse: "4"),
    SuraData(
        suraNumber: 113, suraEG: "Al-Falaq", suraAR: "الفلق", suraVerse: "5"),
    SuraData(
        suraNumber: 114, suraEG: "An-Nas", suraAR: "الناس", suraVerse: "6"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.quranBackground),
          fit: BoxFit.fill,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
              child: Image.asset(AppAssets.layoutTop),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                cursorColor: AppColors.primaryColor,
                style: TextStyle(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ImageIcon(
                      AssetImage("assets/images/quranIconText.png"),
                      color: AppColors.primaryColor,
                    ),
                  ),
                  fillColor: AppColors.secondaryColor.withValues(alpha: .5),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          width: 1.5, color: AppColors.primaryColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          width: 1.5, color: AppColors.primaryColor)),
                  hintText: " Sura Name",
                  hintStyle: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Most Recently ",
                style: TextStyle(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemCount: recentDataList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      QuranItems(recentData: recentDataList[index])),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "Sura List ",
                style: TextStyle(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => Divider(
                      indent: 45,
                      endIndent: 45,
                    ),
                itemCount: recentDataList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, QuranDetailsView.routeName,
                            arguments: recentDataList[index]);
                      },
                      child: SuraItems(
                        recentData: recentDataList[index],
                      ),
                    ))
          ],
        ),
      ),
    );
  }
}

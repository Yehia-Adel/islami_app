import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_colors.dart';

class NavBarItem extends StatelessWidget {
  final String iconPath;
  final int selectedIndex;
  final int iconIndex;

  const NavBarItem(
      {super.key,
      required this.iconPath,
      required this.selectedIndex,
      required this.iconIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: selectedIndex == iconIndex
            ? AppColors.secondaryColor.withValues(alpha: 0.5)
            : Colors.transparent,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ImageIcon(AssetImage(iconPath)),
    );
  }
}

import 'package:flutter/material.dart';

import '../providers/screen_services.dart';
import '../themes/app_colors.dart';
import '../utils/assets.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: router.pop,
      child: Container(
        margin: const EdgeInsets.only(left: 32, top: 5),
        width: 53,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          border: Border.all(
            color: AppColors.charcoal.withOpacity(0.3),
          ),),
        child: Assets.backButton.png,
      ),
    );
  }
}

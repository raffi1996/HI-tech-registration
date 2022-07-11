
import 'package:flutter/material.dart';
import 'package:hi_tech_registration/router.gr.dart';

import '../providers/screen_services.dart';
import '../themes/app_colors.dart';
import '../utils/assets.dart';

class LanguageButton extends StatefulWidget {
  const LanguageButton({Key? key}) : super(key: key);

  @override
  State<LanguageButton> createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        router.push(const LanguageRoute());
      },
      child: Container(
        margin: const EdgeInsets.only(right: 32, top: 5),
        width: 53,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          border: Border.all(
            color: AppColors.charcoal.withOpacity(0.3),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.usa.svg(),
            const SizedBox(width: 6),
            SizedBox(
              width: 12,
              height: 12,
              child: Assets.bottomButton.png,
            )
          ],
        ),
      ),
    );
  }
}

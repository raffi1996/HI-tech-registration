import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final bool disabled;
  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 14),
              ),
              backgroundColor: MaterialStateProperty.all(
                disabled ? AppColors.grayRegular : AppColors.appGreen,
              ),
              elevation: MaterialStateProperty.all(4),
            ),
            onPressed: disabled ? null : onTap,
            child: Text(
              buttonText,
              style: GoogleFonts.assistant(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

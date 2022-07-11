import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String hintText;
  final String? error;
  final bool isPassword;
  final Function(String)? onChange;
  final bool isPhoneTextField;

  const CustomTextField({
    Key? key,
    required this.controller,
    this.focusNode,
    required this.hintText,
    this.onChange,
    this.error,
    this.isPassword = false,
    this.isPhoneTextField = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      controller: controller,
      focusNode: focusNode,
      obscureText: isPassword,
      enableSuggestions: !isPassword,
      autocorrect: !isPassword,
      decoration: InputDecoration(
        errorText: error,
        fillColor: Colors.white,
        filled: true,
        contentPadding: const EdgeInsets.only(left: 24, top: 15, bottom: 15),
        hintText: hintText,
        hintStyle: GoogleFonts.assistant(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: isPhoneTextField
              ? BorderSide.none
              : const BorderSide(width: 0, color: AppColors.grayRegular),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: isPhoneTextField
              ? BorderSide.none
              : const BorderSide(width: 0, color: AppColors.appGreen),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: isPhoneTextField
              ? BorderSide.none
              : const BorderSide(width: 0, color: AppColors.grayRegular),
        ),
      ),
    );
  }
}

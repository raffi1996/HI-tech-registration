import 'package:flutter/material.dart';
import 'package:hi_tech_registration/widgets/custom_text_field.dart';

import '../themes/app_colors.dart';
import '../utils/assets.dart';

class PhoneNumberTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String hintText;
  final String? error;
  final Function(String)? onChange;

  const PhoneNumberTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.focusNode,
    this.error,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 14, bottom: 14),
                child: Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Center(
                        child: Assets.usa.svg(),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 10,
                      height: 28,
                      child: Assets.bottomButton.png,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 12),
                      height: 25,
                      decoration: const BoxDecoration(
                        border: Border(
                          right: BorderSide(
                              color: AppColors.grayRegular, width: 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: CustomTextField(
                isPhoneTextField: true,
                hintText: hintText,
                controller: controller,
                onChange: onChange,
              ))
            ],
          ),
        ),
        if (error != null)
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              error!,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.error,
              ),
            ),
          ),
      ],
    );
  }
}

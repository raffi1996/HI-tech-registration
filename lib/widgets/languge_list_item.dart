import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../themes/app_colors.dart';
import '../utils/assets.dart';

class LanguageListItem extends StatelessWidget {
  final Function(bool?) onTap;
  final String title;
  final bool isSelected;
  final String? countryCode;
  final bool isLanguageListItem;

  const LanguageListItem({
    Key? key,
    required this.onTap,
    required this.title,
    this.isSelected = false,
    this.countryCode,
    this.isLanguageListItem = false,
  }) : super(key: key);

  String get titleText => !isLanguageListItem && countryCode != null
      ? '$title ($countryCode)'
      : title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          horizontalTitleGap: 14,
          //trailing: isSelected ? Assets.selectCheckYellow.svg() : null,
          title: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1.25),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.25),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.1),
                    ),
                    
                  ),
                  clipBehavior: Clip.antiAlias,
                  height: 15,
                  width: 20,
                  child: Checkbox(onChanged: onTap, value: isSelected,),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: RichText(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textHeightBehavior: const TextHeightBehavior(
                    leadingDistribution: TextLeadingDistribution.even,
                  ),
                  text: TextSpan(
                    text: title,
                    style: GoogleFonts.assistant(
                      color: AppColors.charcoal,
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}

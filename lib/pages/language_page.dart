import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hi_tech_registration/mixins/after_layout_mixin.dart';
import 'package:hi_tech_registration/widgets/languge_list_item.dart';

import '../app.dart';
import '../themes/app_colors.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> with AfterLayoutMixin{
  bool am = false;
  bool en = false;
  bool ru = false;

  /// this is a bad decision, because I made it at the last moment
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: AppColors.charcoal,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            LanguageListItem(
              isSelected: en,
              onTap: (_) async {
                setState((){
                  ru = false;
                  am = false;
                  en = true;
                });
                await context.setLocale(const Locale('en'));
              },
              title: 'English',
            ),
            LanguageListItem(
              isSelected: ru,
              onTap: (_) async {
                setState((){
                  ru = true;
                  am = false;
                  en = false;

                });
               await context.setLocale(const Locale('ru'));
              },
              title: 'Russian',
            ),
            LanguageListItem(
              isSelected: am,
              onTap: (_) async {

                setState((){
                  ru = false;
                  am = true;
                  en = false;
                });
                await context.setLocale(const Locale('am'));
              },
              title: 'Armenian',
            ),
          ],
        ),
      ),
    );
  }



  @override
  void afterFirstLayout(BuildContext context) {
    if(context.locale == const Locale('am')){
        setState(() => am = true);
    }else if (context.locale == const Locale('en')){
      setState(() => en = true);
    }else{
      setState(() => ru = true);
    }
  }
}

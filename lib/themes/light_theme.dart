
import 'package:flutter/material.dart';

import 'app_colors.dart';

final base = ThemeData.light();


final lightTheme = base.copyWith(
  scaffoldBackgroundColor: AppColors.white,
  appBarTheme: base.appBarTheme.copyWith(
    color: AppColors.white,
    elevation: 0,
    centerTitle: true,
  )
);
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hi_tech_registration/app.dart';

import 'generated/codegen_loader.g.dart';
import 'providers/get_it.dart';

Future<void> run() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  registerGetIt();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ru'),
        Locale('am'),
      ],
      startLocale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      path: 'assets/translations',
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );
}


Future<void> main() async {
  await run();
}
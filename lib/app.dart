import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'providers/screen_services.dart';
import 'themes/light_theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

  Locale? _locale;

  @override
  Widget build(BuildContext context) {
    rebuildAllChildren(context);
    return MaterialApp.router(
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      theme: lightTheme,
      routerDelegate: router.delegate(
        navigatorObservers: () => [

        ],
      ),
      routeInformationParser: router.defaultRouteParser(),
    );
  }


  void rebuildAllChildren(BuildContext context) {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }
    (context as Element).visitChildren(rebuild);
  }
}

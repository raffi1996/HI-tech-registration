import 'package:auto_route/auto_route.dart';
import 'package:hi_tech_registration/pages/language_page.dart';

import 'pages/dashboard_page.dart';
import 'pages/login_page.dart';
import 'pages/registration_page.dart';
import 'pages/splash_screen.dart';

export '../router.gr.dart';

@AdaptiveAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Page,Route',
  routes: [
    AdaptiveRoute(
      page: SplashScreenPage,
      initial: true,
    ),
    AdaptiveRoute(
      page: LoginPage,
    ),
    AdaptiveRoute(
      page: RegistrationPage,
    ),
    AdaptiveRoute(
      page: DashboardPage,
    ),
    AdaptiveRoute(
      page: LanguagePage,
    ),
  ],
)
class $Router {}

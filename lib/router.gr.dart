// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import 'pages/dashboard_page.dart' as _i4;
import 'pages/language_page.dart' as _i5;
import 'pages/login_page.dart' as _i2;
import 'pages/registration_page.dart' as _i3;
import 'pages/splash_screen.dart' as _i1;

class Router extends _i6.RootStackRouter {
  Router([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashScreenPage());
    },
    LoginRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    RegistrationRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.RegistrationPage());
    },
    DashboardRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.DashboardPage());
    },
    LanguageRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.LanguagePage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i6.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i6.RouteConfig(RegistrationRoute.name, path: '/registration-page'),
        _i6.RouteConfig(DashboardRoute.name, path: '/dashboard-page'),
        _i6.RouteConfig(LanguageRoute.name, path: '/language-page')
      ];
}

/// generated route for
/// [_i1.SplashScreenPage]
class SplashScreenRoute extends _i6.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.RegistrationPage]
class RegistrationRoute extends _i6.PageRouteInfo<void> {
  const RegistrationRoute()
      : super(RegistrationRoute.name, path: '/registration-page');

  static const String name = 'RegistrationRoute';
}

/// generated route for
/// [_i4.DashboardPage]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '/dashboard-page');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i5.LanguagePage]
class LanguageRoute extends _i6.PageRouteInfo<void> {
  const LanguageRoute() : super(LanguageRoute.name, path: '/language-page');

  static const String name = 'LanguageRoute';
}

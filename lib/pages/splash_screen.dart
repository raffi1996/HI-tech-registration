

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hi_tech_registration/mixins/after_layout_mixin.dart';

import '../providers/screen_services.dart';
import '../router.gr.dart';
import '../stare/auth_state/auth_state.dart';
import '../utils/storage_utils.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> with AfterLayoutMixin {

  final authState = GetIt.I<AuthState>();

  @override
  Future afterFirstLayout(BuildContext context) async {
    await checkSession();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }



  Future<void> checkSession() async {
    await Future.delayed(const Duration(seconds: 3));
    await router.pushAndPopAll(const LoginRoute());
    // final _token = await StorageUtils.getAccessToken();
    //
    // if (_token != null) {
    //   //await authState.setCurrentUser(user!);
    //   await router.pushAndPopAll(const DashboardRoute());
    // } else {
    //   await router.pushAndPopAll(const LoginRoute());
    // }
  }


}

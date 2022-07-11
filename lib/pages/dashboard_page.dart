import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_tech_registration/stare/auth_state/auth_state.dart';
import 'package:hi_tech_registration/widgets/custom_button.dart';

import '../themes/app_colors.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final authState = GetIt.I<AuthState>();

  String get userName =>
      '${authState.currentUser.firstName!} ${authState.currentUser.lastName!}';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'dashboardPage.currentUser'.tr(),
          style: GoogleFonts.assistant(
              color: AppColors.charcoal, fontWeight: FontWeight.w700),
        ),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height - 100,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'dashboardPage.welcome'.tr(),
                    style: GoogleFonts.assistant(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    userName,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    authState.currentUser.email!,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    authState.currentUser.phoneNumber!,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).padding.bottom + 32,
                  left: 32,
                  right: 32,
                ),
                child: CustomButton(
                  buttonText: 'keywords.logOut'.tr(),
                  onTap: logout,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> logout() async {
    authState.logout();
  }
}

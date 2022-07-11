import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_tech_registration/router.gr.dart';
import 'package:hi_tech_registration/stare/auth_state/auth_state.dart';
import 'package:hi_tech_registration/stare/validation_state/validation_state.dart';
import 'package:hi_tech_registration/widgets/custom_text_field.dart';
import 'package:hi_tech_registration/widgets/phone_number_text_field.dart';

import '../providers/screen_services.dart';
import '../themes/app_colors.dart';
import '../widgets/custom_backButoon.dart';
import '../widgets/custom_button.dart';
import '../widgets/language_button.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _validationState = ValidationState();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _validationState.setupValidations();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    phoneNumberController.dispose();
    _validationState.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                const SizedBox(
                  height: 145,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'registrationPage.alreadyHaveAccount'.tr(),
                      style: GoogleFonts.assistant(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: router.pop,
                      child: Container(
                        width: 90,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 16),
                        child: SizedBox(
                          height: 30,
                          child: Text(
                            'keywords.login'.tr(),
                            style: GoogleFonts.assistant(
                              fontSize: context.locale != const Locale('en') ? 10 : 16,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w700,
                              color: AppColors.appGreen,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 70),
                Text(
                  'keywords.register'.tr(),
                  style: GoogleFonts.assistant(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 32),
                Observer(
                  builder: (_) => CustomTextField(
                    error: _validationState.error.firstName != null
                        ? _validationState.error.firstName!.tr()
                        : null,
                    onChange: sdfa(_) {
                      _validationState.error.firstName = null;
                    },
                    controller: firstNameController,
                    hintText: 'registrationPage.firstName'.tr(),
                  ),
                ),
                const SizedBox(height: 32),
                Observer(
                  builder: (_) => CustomTextField(
                    error: _validationState.error.lastName != null
                        ? _validationState.error.lastName!.tr()
                        : null,
                    onChange: (_) {
                      _validationState.error.lastName = null;
                    },
                    controller: lastNameController,
                    hintText: 'registrationPage.lastName'.tr(),
                  ),
                ),
                const SizedBox(height: 32),
                Observer(
                  builder: (_) => CustomTextField(
                    error: _validationState.error.email != null
                        ? _validationState.error.email!.tr()
                        : null,
                    onChange: (_) {
                      _validationState.error.email = null;
                    },
                    controller: emailController,
                    hintText: 'registrationPage.email'.tr(),
                  ),
                ),
                const SizedBox(height: 32),
                Observer(
                  builder: (_) => PhoneNumberTextField(
                    error: _validationState.error.phoneNumber != null
                        ? _validationState.error.phoneNumber!.tr()
                        : null,
                    onChange: (_) {
                      _validationState.error.phoneNumber = null;
                    },
                    controller: phoneNumberController,
                    hintText: 'registrationPage.phoneNumber'.tr(),
                  ),
                ),
                const SizedBox(height: 32),
                Observer(
                  builder: (_) => CustomTextField(
                    error: _validationState.error.password != null
                        ? _validationState.error.password!.tr()
                        : null,
                    onChange: (_) {
                      _validationState.error.password = null;
                    },
                    controller: passwordController,
                    hintText: 'keywords.password'.tr(),
                    isPassword: true,
                  ),
                ),
                const SizedBox(height: 32),
                Observer(
                  builder: (_) => CustomTextField(
                    error: _validationState.error.confirmPassword != null
                        ? _validationState.error.confirmPassword!.tr()
                        : null,
                    onChange: (_) {
                      _validationState.error.confirmPassword = null;
                    },
                    controller: confirmPasswordController,
                    hintText: 'registrationPage.confirmPassword'.tr(),
                    isPassword: true,
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
          const Positioned(
            top: 30,
            child: CustomBackButton(),
          ),
          const Positioned(
            right: 0,
            top: 30,
            child: LanguageButton(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: MediaQuery.of(context).padding.bottom + 34),
              child: Observer(
                builder: (_) => CustomButton(
                  onTap: onCreate,
                  disabled: _validationState.error.hasErrors,
                  buttonText: "keywords.create".tr(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> onCreate() async {
    _validationState.firstName = firstNameController.text;
    _validationState.lastName = lastNameController.text;
    _validationState.email = emailController.text;
    _validationState.phoneNumber = phoneNumberController.text;
    _validationState.password = passwordController.text;
    _validationState.confirmPassword = confirmPasswordController.text;
    _validationState.validateAll();
    if (_validationState.error.hasErrors) {
      return;
    }

    try {
      GetIt.I<AuthState>().register(
        firstName: _validationState.firstName,
        lastName: _validationState.lastName,
        email: _validationState.email,
        phoneNumber: _validationState.phoneNumber,
        password: _validationState.password,
      );

      router.push(
        const DashboardRoute(),
      );

    } catch (e) {
      log(e.toString());
    } finally {}
  }
}

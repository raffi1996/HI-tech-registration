

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_tech_registration/router.gr.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hi_tech_registration/stare/auth_state/auth_state.dart';
import 'package:hi_tech_registration/stare/validation_state/validation_state.dart';
import '../providers/screen_services.dart';
import '../themes/app_colors.dart';
import '../utils/ui_utils.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/language_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final ValidationState _validationState = ValidationState();

  @override
  void initState() {
    super.initState();
    _validationState.setupValidations();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    passwordFocusNode.dispose();
    emailFocusNode.dispose();
    _validationState.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: hideKeyboard,
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 155,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'loginPage.haveAccount'.tr(),
                        style: GoogleFonts.assistant(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          router.push(const RegistrationRoute());
                        },
                        child: Container(
                          width: 99,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 16),
                          child: Center(
                            child: Text(
                              'keywords.create'.tr(),
                              style: GoogleFonts.assistant(
                                fontSize: context.locale != const Locale('en')? 12: 16,
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
                  const SizedBox(
                    height: 74,
                  ),
                  Text(
                    'keywords.login'.tr(),
                    style: GoogleFonts.assistant(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Observer(
                        builder: (_) => CustomTextField(
                          focusNode: emailFocusNode,
                          controller: emailController,
                          hintText: 'keywords.emailOrUsername'.tr(),
                          error: _validationState.error.email != null
                              ? _validationState.error.email!.tr()
                              : null,
                          onChange: (_) {
                            _validationState.error.email = null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Observer(
                        builder: (_) => CustomTextField(
                          isPassword: true,
                          focusNode: passwordFocusNode,
                          controller: passwordController,
                          hintText: 'keywords.password'.tr(),
                          error: _validationState.error.password != null
                              ? _validationState.error.password!.tr()
                              : null,
                          onChange: (_) {
                            _validationState.error.password = null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        child: Text(
                          'loginPage.forgotPassword'.tr(),
                          style: GoogleFonts.assistant(
                            fontSize: 16,
                            color: AppColors.charcoal,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
            const Positioned(
              right: 0,
              top: 30,
              child: LanguageButton(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 32,
                  right: 32,
                  bottom: MediaQuery.of(context).padding.bottom + 34,
                ),
                child: Observer(
                  builder: (_) => CustomButton(
                    buttonText: 'keywords.login'.tr(),
                    onTap: onTap,
                    disabled: _validationState.error.hasErrors,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> onTap() async {
    _validationState.email = emailController.text;
    _validationState.password = passwordController.text;
    _validationState.validateEmail(emailController.text);
    _validationState.validatePassword(passwordController.text);
    if(_validationState.error.hasErrors){
      return;
    }
    GetIt.I<AuthState>().login(
      password: _validationState.password,
      email: _validationState.email,
    );
  }
}

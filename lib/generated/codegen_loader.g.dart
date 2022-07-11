// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> am = {
  "keywords": {
    "password": "Գաղտնաբառ",
    "emailOrUsername": "Մականուն: Էլեկտրոնային հասցե",
    "logOut": "Դուրս գալ",
    "create": "Ստեղծել",
    "register": "Գրանցվել",
    "login": "Մուտք գործել",
    "confirm": "Հաստատել"
  },
  "loginPage": {
    "haveAccount": "Չունե՞ք HyeID էջ",
    "forgotPassword": "Մոռացե՞լ եք գաղտնաբառը"
  },
  "registrationPage": {
    "alreadyHaveAccount": "Արդեն ունե՞ք HyeID էջ",
    "firstName": "Անուն",
    "lastName": "Ազգանուն",
    "email": "Էլեկտրոնային հասցե",
    "phoneNumber": "Հեռախոսահամար",
    "confirmPassword": "Հաստատել գաղտնաբառը"
  },
  "validations": {
    "emailRequired": "Պահանջվում է էլ.փոստի հասցեն",
    "emailNotValid": "Խնդրում ենք մուտքագրել վավեր էլ.փոստի հասցե",
    "invalidPassword": "անվավեր գաղտնաբառ",
    "confirmPassword": "Գաղտնաբառերը չեն համապատասխանում",
    "firstName": "Անունը պարտադիր է",
    "lastName": "Ազգանունը պարտադիր է",
    "phoneNumber": "Ձեր մուտքագրած համարը, կարծես թե, վավեր չէ:\nԽնդրում ենք ստուգել համարը և նորից փորձել:"
  },
  "dashboardPage": {
    "currentUser": "Ընթացիկ օգտատեր",
    "welcome": "Բարի գալուստ"
  }
};
static const Map<String,dynamic> en = {
  "keywords": {
    "password": "Password",
    "emailOrUsername": "Username: email",
    "logOut": "Log out",
    "create": "Create",
    "register": "Register",
    "login": "Login",
    "confirm": "ConfIrm"
  },
  "loginPage": {
    "haveAccount": "Don’t have an HyeID account?",
    "forgotPassword": "Forgot password?"
  },
  "registrationPage": {
    "alreadyHaveAccount": "Already have a HyeID account?",
    "firstName": "First Name",
    "lastName": "Last Name",
    "email": "email",
    "phoneNumber": "Phone Number",
    "confirmPassword": "Confirm Password"
  },
  "validations": {
    "emailRequired": "Email required",
    "emailNotValid": "Please enter valid email",
    "invalidPassword": "invalid password",
    "confirmPassword": "Passwords do not match",
    "firstName": "First name is required",
    "lastName": "Last name is required",
    "phoneNumber": "Looks like the number you entered is not valid.\nPlease check the number and try again."
  },
  "dashboardPage": {
    "currentUser": "Current User",
    "welcome": "Welcome"
  }
};
static const Map<String,dynamic> ru = {
  "keywords": {
    "password": "Пароль",
    "emailOrUsername": "Имя пользователя: электронная почта",
    "logOut": "Выйти",
    "create": "Создать",
    "register": "Регистрация",
    "login": "Авторизоваться",
    "confirm": "Подтверждать"
  },
  "loginPage": {
    "haveAccount": "У вас нет учетной записи HyeID?",
    "forgotPassword": "Забыл пароль?"
  },
  "registrationPage": {
    "alreadyHaveAccount": "У вас уже есть учетная запись Hye ID?",
    "firstName": "Имя",
    "lastName": "Фамилия",
    "email": "Эл. адрес",
    "phoneNumber": "Номер телефона",
    "confirmPassword": "Подтвердить Пароль"
  },
  "validations": {
    "emailRequired": "Требуется электронная почта",
    "emailNotValid": "Пожалуйста, введите действительный адрес электронной почты",
    "invalidPassword": "Неверный пароль",
    "confirmPassword": "Пароли не совпадают",
    "firstName": "Требуется имя",
    "lastName": "Требуется фамилия",
    "phoneNumber": "Похоже, введенный вами номер недействителен.\nПроверьте номер и повторите попытку."
  },
  "dashboardPage": {
    "currentUser": "Текущий пользователь",
    "welcome": "Добро пожаловать"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"am": am, "en": en, "ru": ru};
}

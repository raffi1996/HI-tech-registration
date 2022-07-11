// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ValidationState on _ValidationState, Store {
  late final _$emailAtom =
      Atom(name: '_ValidationState.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_ValidationState.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$firstNameAtom =
      Atom(name: '_ValidationState.firstName', context: context);

  @override
  String get firstName {
    _$firstNameAtom.reportRead();
    return super.firstName;
  }

  @override
  set firstName(String value) {
    _$firstNameAtom.reportWrite(value, super.firstName, () {
      super.firstName = value;
    });
  }

  late final _$lastNameAtom =
      Atom(name: '_ValidationState.lastName', context: context);

  @override
  String get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  late final _$phoneNumberAtom =
      Atom(name: '_ValidationState.phoneNumber', context: context);

  @override
  String get phoneNumber {
    _$phoneNumberAtom.reportRead();
    return super.phoneNumber;
  }

  @override
  set phoneNumber(String value) {
    _$phoneNumberAtom.reportWrite(value, super.phoneNumber, () {
      super.phoneNumber = value;
    });
  }

  late final _$confirmPasswordAtom =
      Atom(name: '_ValidationState.confirmPassword', context: context);

  @override
  String get confirmPassword {
    _$confirmPasswordAtom.reportRead();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String value) {
    _$confirmPasswordAtom.reportWrite(value, super.confirmPassword, () {
      super.confirmPassword = value;
    });
  }

  late final _$_ValidationStateActionController =
      ActionController(name: '_ValidationState', context: context);

  @override
  void validateEmail(dynamic _) {
    final _$actionInfo = _$_ValidationStateActionController.startAction(
        name: '_ValidationState.validateEmail');
    try {
      return super.validateEmail(_);
    } finally {
      _$_ValidationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword(dynamic _) {
    final _$actionInfo = _$_ValidationStateActionController.startAction(
        name: '_ValidationState.validatePassword');
    try {
      return super.validatePassword(_);
    } finally {
      _$_ValidationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateConfirmPassword(dynamic _) {
    final _$actionInfo = _$_ValidationStateActionController.startAction(
        name: '_ValidationState.validateConfirmPassword');
    try {
      return super.validateConfirmPassword(_);
    } finally {
      _$_ValidationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePhoneNumber(dynamic _) {
    final _$actionInfo = _$_ValidationStateActionController.startAction(
        name: '_ValidationState.validatePhoneNumber');
    try {
      return super.validatePhoneNumber(_);
    } finally {
      _$_ValidationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateFirstName(dynamic _) {
    final _$actionInfo = _$_ValidationStateActionController.startAction(
        name: '_ValidationState.validateFirstName');
    try {
      return super.validateFirstName(_);
    } finally {
      _$_ValidationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateLastName(dynamic _) {
    final _$actionInfo = _$_ValidationStateActionController.startAction(
        name: '_ValidationState.validateLastName');
    try {
      return super.validateLastName(_);
    } finally {
      _$_ValidationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
firstName: ${firstName},
lastName: ${lastName},
phoneNumber: ${phoneNumber},
confirmPassword: ${confirmPassword}
    ''';
  }
}

mixin _$FormErrorState on _FormErrorState, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_FormErrorState.hasErrors'))
          .value;

  late final _$emailAtom =
      Atom(name: '_FormErrorState.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_FormErrorState.password', context: context);

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$firstNameAtom =
      Atom(name: '_FormErrorState.firstName', context: context);

  @override
  String? get firstName {
    _$firstNameAtom.reportRead();
    return super.firstName;
  }

  @override
  set firstName(String? value) {
    _$firstNameAtom.reportWrite(value, super.firstName, () {
      super.firstName = value;
    });
  }

  late final _$lastNameAtom =
      Atom(name: '_FormErrorState.lastName', context: context);

  @override
  String? get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String? value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  late final _$phoneNumberAtom =
      Atom(name: '_FormErrorState.phoneNumber', context: context);

  @override
  String? get phoneNumber {
    _$phoneNumberAtom.reportRead();
    return super.phoneNumber;
  }

  @override
  set phoneNumber(String? value) {
    _$phoneNumberAtom.reportWrite(value, super.phoneNumber, () {
      super.phoneNumber = value;
    });
  }

  late final _$confirmPasswordAtom =
      Atom(name: '_FormErrorState.confirmPassword', context: context);

  @override
  String? get confirmPassword {
    _$confirmPasswordAtom.reportRead();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String? value) {
    _$confirmPasswordAtom.reportWrite(value, super.confirmPassword, () {
      super.confirmPassword = value;
    });
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
firstName: ${firstName},
lastName: ${lastName},
phoneNumber: ${phoneNumber},
confirmPassword: ${confirmPassword},
hasErrors: ${hasErrors}
    ''';
  }
}

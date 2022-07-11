import 'package:mobx/mobx.dart';

import '../../constants/regexp.dart';

part 'validation_state.g.dart';

// ignore: library_private_types_in_public_api
class ValidationState = _ValidationState with _$ValidationState;

abstract class _ValidationState with Store {
  final FormErrorState error = FormErrorState();

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String firstName = '';

  @observable
  String lastName = '';

  @observable
  String phoneNumber = '';

  @observable
  String confirmPassword = '';

  List<ReactionDisposer>? _disposers;

  void setupValidations() {
    if (_disposers != null) {
      return;
    }
    _disposers = [
      reaction((_) => email, validateEmail),
      reaction((_) => password, validatePassword),
      reaction((_) => phoneNumber, validatePhoneNumber),
      reaction((_) => firstName, validateFirstName),
      reaction((_) => lastName, validateLastName),
      reaction((_) => confirmPassword, validateConfirmPassword),
    ];
  }

  void dispose() {
    if (_disposers == null) {
      return;
    }
    for (final d in _disposers!) {
      d();
    }
  }

  @action
  void validateEmail(_) {
    error.email = email.trim().isEmpty
        ? 'validations.emailRequired'
        : !email.contains(RegExp(emailRegExp))
            ? 'validations.emailNotValid'
            : null;
  }

  @action
  void validatePassword(_) {
    error.password =
        password.trim().isEmpty || password.contains(RegExp(passwordRegexp))
            ? 'validations.invalidPassword'
            : null;
  }

  @action
  void validateConfirmPassword(_) {
    error.confirmPassword =
        error.password == null && password != confirmPassword
            ? 'validations.confirmPassword'
            : null;

  }

  @action
  void validatePhoneNumber(_) {
    error.phoneNumber = phoneNumber.length <= 5 ? 'validations.phoneNumber' : null;
  }

  @action
  void validateFirstName(_) {
    error.firstName =
        firstName.trim().isEmpty ? 'validations.firstName' : null;
  }

  @action
  void validateLastName(_) {
    error.lastName =
        lastName.trim().isEmpty ? 'validations.lastName' : null;
  }

  void validateAll() {
    validateEmail(email);
    validatePassword(password);
    validateConfirmPassword(confirmPassword);
    validateFirstName(firstName);
    validateLastName(lastName);
    validatePhoneNumber(phoneNumber);
  }
}

// ignore: library_private_types_in_public_api
class FormErrorState = _FormErrorState with _$FormErrorState;

abstract class _FormErrorState with Store {
  @observable
  String? email;

  @observable
  String? password;

  @observable
  String? firstName;

  @observable
  String? lastName;

  @observable
  String? phoneNumber;

  @observable
  String? confirmPassword;

  @computed
  bool get hasErrors =>
      email != null ||
      password != null ||
      firstName != null ||
      lastName != null ||
      phoneNumber != null ||
      confirmPassword != null;
}

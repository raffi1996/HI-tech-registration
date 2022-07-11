// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthState on _AuthState, Store {
  late final _$currentUserAtom =
      Atom(name: '_AuthState.currentUser', context: context);

  @override
  UserModel get currentUser {
    _$currentUserAtom.reportRead();
    return super.currentUser;
  }

  @override
  set currentUser(UserModel value) {
    _$currentUserAtom.reportWrite(value, super.currentUser, () {
      super.currentUser = value;
    });
  }

  late final _$accessTokenAtom =
      Atom(name: '_AuthState.accessToken', context: context);

  @override
  String? get accessToken {
    _$accessTokenAtom.reportRead();
    return super.accessToken;
  }

  @override
  set accessToken(String? value) {
    _$accessTokenAtom.reportWrite(value, super.accessToken, () {
      super.accessToken = value;
    });
  }

  late final _$usersAtom = Atom(name: '_AuthState.users', context: context);

  @override
  ObservableList<UserModel> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(ObservableList<UserModel> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  late final _$setCurrentUserAsyncAction =
      AsyncAction('_AuthState.setCurrentUser', context: context);

  @override
  Future<void> setCurrentUser(UserModel user) {
    return _$setCurrentUserAsyncAction.run(() => super.setCurrentUser(user));
  }

  late final _$setAuthInfoAsyncAction =
      AsyncAction('_AuthState.setAuthInfo', context: context);

  @override
  Future<void> setAuthInfo(AuthInfoModel authInfoModel) {
    return _$setAuthInfoAsyncAction.run(() => super.setAuthInfo(authInfoModel));
  }

  late final _$loginAsyncAction =
      AsyncAction('_AuthState.login', context: context);

  @override
  Future<void> login({required String password, required String email}) {
    return _$loginAsyncAction
        .run(() => super.login(password: password, email: email));
  }

  late final _$logoutAsyncAction =
      AsyncAction('_AuthState.logout', context: context);

  @override
  Future<void> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  @override
  String toString() {
    return '''
currentUser: ${currentUser},
accessToken: ${accessToken},
users: ${users}
    ''';
  }
}

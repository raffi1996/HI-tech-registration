// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

import '../../models/auth_info_model/auth_info_model.dart';
import '../../models/token_model/token_model.dart';
import '../../models/user_model/user_model.dart';
import '../../providers/get_it.dart';
import '../../providers/screen_services.dart';
import '../../router.gr.dart';
import '../../utils/storage_utils.dart';

part 'auth_state.g.dart';

class AuthState = _AuthState with _$AuthState;

abstract class _AuthState with Store {
  @observable
  UserModel currentUser = UserModel(id: const Uuid().v1());

  @observable
  String? accessToken;

  @observable
  ObservableList<UserModel> users =
      ObservableList<UserModel>.of([]).asObservable();

  @action
  Future<void> setCurrentUser(UserModel user) async {
    currentUser = user;
    await StorageUtils.setUser(user);
    await StorageUtils.setUsers(users);
  }

  @action
  Future<void> setAuthInfo(AuthInfoModel authInfoModel) async {
    final user = authInfoModel.user;
    final accessTokenModel = authInfoModel.accessToken;
    accessToken = accessTokenModel.token;
    await StorageUtils.setAccessToken(accessTokenModel.token);

    users.add(user);

    await setCurrentUser(user);
  }

  Future<void> register({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
  }) async {
    final authInfoModel = AuthInfoModel(
      user: UserModel(
        id: const Uuid().v1(),
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        email: email,
        password: password,
      ),
      accessToken: TokenModel(token: password),
    );

    await setAuthInfo(authInfoModel);
  }

  @action
  Future<void> login({required String password, required String email}) async {
    final users = await StorageUtils.getUsers();

    if (users != null) {
      for (var i = 0; i < users.length; ++i) {
        if (users[i].password == password && users[i].email == email) {
          final authInfo = AuthInfoModel(
            user: users[i],
            accessToken: TokenModel(token: users[i].password!),
          );
          await setAuthInfo(authInfo);
          router.push(const DashboardRoute());
        }
      }
    }
  }

  Future<void> _cleanUserData() async {
    await Future.wait([StorageUtils.removeAccessToken()]);

    reRegisterStoreGetIt();
  }

  @action
  Future<void> logout() async {
    await _cleanUserData();
    unawaited(
      router.pushAndPopAll(const LoginRoute()),
    );
  }
}

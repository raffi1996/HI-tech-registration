

import 'package:get_it/get_it.dart';

import '../stare/auth_state/auth_state.dart';

void registerGetIt(){


  registerStoreGetIt();
}




void registerStoreGetIt() {
  GetIt.I.registerSingleton(AuthState());
}


void reRegisterStoreGetIt() {
  final authState = GetIt.I<AuthState>();

  GetIt.I.unregister(instance: authState);

  registerStoreGetIt();
}
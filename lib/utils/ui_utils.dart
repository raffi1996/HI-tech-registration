import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../providers/screen_services.dart';


void hideKeyboard({bool focusOut = true}) {
  if (focusOut) {
    FocusScope.of(router.navigatorKey.currentContext!)
        .requestFocus(FocusNode());
  }
  unawaited(SystemChannels.textInput.invokeMethod<void>('TextInput.hide'));
}
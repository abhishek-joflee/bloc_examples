import 'dart:developer';

import 'package:bloc/bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log("${bloc.runtimeType} : $change");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log(
      "Error in ${bloc.runtimeType} !!",
      error: error,
      stackTrace: stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log("💀 💀 💀 💀 EVENT *** ${bloc.runtimeType} : $event *** 💀 💀 💀 💀");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log("🏹 🏹 🏹 🏹 TRANSACTION *** ${bloc.runtimeType} : $transition *** 🏹 🏹 🏹 🏹");
  }
}

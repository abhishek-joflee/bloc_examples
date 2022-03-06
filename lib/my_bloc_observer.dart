import 'dart:developer';

import 'package:bloc/bloc.dart';

/// [BlocObserver] for the application which
/// observes all state changes.
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
}

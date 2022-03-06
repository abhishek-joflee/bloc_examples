import 'dart:developer';

import 'package:bloc/bloc.dart';

/// {@template counter_observer}
/// [BlocObserver] for the counter application which
/// observes all state changes.
/// {@endtemplate}
class CounterBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log("${bloc.runtimeType} : $change");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log("Error !!", error: error, stackTrace: stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}

import 'package:flutter/material.dart';

import 'timer/view/timer_page.dart';

/// A [MaterialApp] which sets the `home`.
class MyApp extends MaterialApp {
  const MyApp({Key? key}) : super(key: key, home: const TimerPage());
}

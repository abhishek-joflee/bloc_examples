import 'package:flutter/material.dart';

import 'post/post.dart';

/// A [MaterialApp] which sets the `home`.
class MyApp extends MaterialApp {
  const MyApp({Key? key}) : super(key: key, home: const PostsPage());
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:login_pro/screens/login_screen.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
    setWindowTitle('Login');
    setWindowMinSize(const Size(400, 700)); // Minimum size
    setWindowMaxSize(const Size(400, 700)); // Maximum size
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: LoginScreen(),
    );
  }
}

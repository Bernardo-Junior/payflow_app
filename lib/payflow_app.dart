import 'package:flutter/material.dart';
import 'screens/splash_scren/splash_screen.dart';
import 'screens/login/login_screen.dart';

class PayflowApp extends StatelessWidget {
  const PayflowApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

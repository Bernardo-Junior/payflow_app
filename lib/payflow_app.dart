import 'package:flutter/material.dart';
import 'package:payflow/screens/home/home_screen.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'screens/splash_scren/splash_screen.dart';
import 'screens/login/login_screen.dart';

class PayflowApp extends StatelessWidget {
  const PayflowApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen()
      },
    );
  }
}

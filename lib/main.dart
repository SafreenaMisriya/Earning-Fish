import 'package:earning_fish/utils/constant.dart';
import 'package:earning_fish/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:AppColors.whitecolor ,
        scaffoldBackgroundColor: AppColors.whitecolor),
      home: const SplashScreen()
    );
  }
}

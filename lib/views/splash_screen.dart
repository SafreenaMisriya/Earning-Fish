import 'dart:async';
import 'package:earning_fish/utils/constant.dart';
import 'package:earning_fish/widgets/bottom_navigationbar.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Bottomnavigationbar ()), 
      );
    });
    return Scaffold(
      body: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.bluetop, AppColors.bluebottom],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Image.asset(
              'assets/image/logo.png',
              fit: BoxFit.cover,
            ),
          ),
        )
      ),
     
    );
  }
}
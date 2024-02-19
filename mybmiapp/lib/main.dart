import 'package:flutter/material.dart';
import 'package:mybmiapp/Dashboard.dart';
import 'package:mybmiapp/DietPlansScreen.dart';
import 'package:mybmiapp/SplashScreen.dart';
import 'package:mybmiapp/WelcomeScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'BMI Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DietPlanScreen(),
    );
  }
}


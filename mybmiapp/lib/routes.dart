

import 'package:flutter/material.dart';
import 'package:mybmiapp/DietPlansScreen.dart';
import 'package:mybmiapp/SplashScreen.dart';

Map<String,WidgetBuilder> routes = {
  DietPlanScreen.routeName:(context) => DietPlanScreen(),
  SplashScreen.routeName:(context) =>  SplashScreen(),
};
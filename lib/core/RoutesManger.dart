
import 'package:diet/Ui/Home/Home.dart';
import 'package:diet/Ui/MainLayout/MainLayot.dart';
import 'package:diet/Ui/UpBodey/UpperBody.dart';
import 'package:diet/Ui/detailsMeals/detailsmeals.dart';
import 'package:diet/core/Routes.dart';
import 'package:diet/data/Models/Meals.dart';

import 'package:flutter/material.dart';

import '../Ui/Search/Search.dart';
import '../data/Models/Excirses.dart';

class RoutesManger {
  static Route<dynamic>? getRoute(RouteSettings route) {
    switch (route.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case AppRoutes.main:
        return MaterialPageRoute(builder: (_) => Mainlayot());
      case AppRoutes.Upperbody:
        return MaterialPageRoute(builder: (_) => Upperbody());
      case AppRoutes.Search:
        List<WorkoutPlan> workoutPlans = route.arguments as List<WorkoutPlan>;
        return MaterialPageRoute(builder: (_) => SearchScreen(workoutPlans:workoutPlans));
      case AppRoutes.details:
        Meals meals = route.arguments as Meals;
        return MaterialPageRoute(
            builder: (_) => Detailsmeals(
                  meals: meals,
                ));
      default:
        return null;
    }
  }
}

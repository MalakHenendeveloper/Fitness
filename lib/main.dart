import 'package:diet/core/MyBloc.dart';
import 'package:diet/core/Routes.dart';
import 'package:diet/core/RoutesManger.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 930),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) {
        return SafeArea(
          child: MaterialApp(
            home: child,
            initialRoute: AppRoutes.main,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RoutesManger.getRoute,
            theme: ThemeData(scaffoldBackgroundColor: Colors.grey[300]),
          ),
        );
      },
    );
  }
}

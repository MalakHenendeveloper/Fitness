import 'package:diet/Ui/MainLayout/cubit/Mainstate.dart';
import 'package:diet/Ui/MainLayout/cubit/mainViewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mainlayot extends StatelessWidget {
  Mainlayot({super.key});
  var viewmodel = MainViewModel();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainViewModel, MainState>(
        bloc: viewmodel,
        builder: (context ,state){
    return  Scaffold(

        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
          child: BottomNavigationBar(
              currentIndex: viewmodel.index,
              onTap: (value){
                viewmodel.changeTabs(value);
              },
              iconSize: 40.h,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
              ]),
        ),
      body: viewmodel.tabs[viewmodel.index],
      );
    });
  }
}

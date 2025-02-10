import 'package:diet/Ui/Home/Home.dart';
import 'package:diet/Ui/MainLayout/cubit/Mainstate.dart';
import 'package:diet/Ui/Search/Search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/Models/Excirses.dart';

class MainViewModel extends Cubit<MainState> {
  MainViewModel() : super(Mainintail());
  int index = 0;

  List<Widget>get tabs => [
    HomeScreen(),
    SearchScreen(workoutPlans: workoutPlans)
  ];
  changeTabs(int selectindex) {
    emit(Mainintail());
    index = selectindex;
    emit(changetab());
  }
}

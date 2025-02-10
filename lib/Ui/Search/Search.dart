
import 'package:flutter/material.dart';

import '../../data/Models/Excirses.dart';
import 'Searchdeleget.dart';

class SearchScreen extends StatelessWidget {
  final List<WorkoutPlan> workoutPlans;

  const SearchScreen({Key? key, required this.workoutPlans}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("البحث عن التمارين"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: WorkoutSearchDelegate(workoutPlans),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          "ابدأ البحث عن تمارينك 🏋️‍♂️",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

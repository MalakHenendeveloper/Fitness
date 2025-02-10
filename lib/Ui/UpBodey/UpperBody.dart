import 'package:diet/Ui/UpBodey/Widgets/Workout.dart';
import 'package:diet/data/Models/UpWorkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Upperbody extends StatelessWidget {
  Upperbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 35,
                    )),
              ),
              Text(
                'Sunday , 9 February',
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Row(spacing: 10.w, children: [
                Text(
                  'Upper Body',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Spacer(),
                Icon(
                  Icons.access_time,
                  color: Colors.white,
                ),
                Text(
                  '60 min',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                )
              ]),
              SizedBox(
                height: 10.h,
              ),
              Container(
                  height: 800,
                  child: ListView.builder(
                      itemCount: allWorkouts.length,
                      itemBuilder: (context, index) {
                        return FullBody(
                          work: allWorkouts[index],
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}

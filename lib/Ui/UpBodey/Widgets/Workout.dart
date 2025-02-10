import 'package:diet/data/Models/UpWorkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FullBody extends StatelessWidget {
  FullBody({super.key, required this.work});
  Workout work;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 70.h,
          width: 70.w,
          margin: EdgeInsets.symmetric(vertical: 5.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              image: DecorationImage(
                  image: AssetImage(
                    work.image,
                  ),
                  fit: BoxFit.fill)),
        ),
        SizedBox(
          width: 20.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              work.name,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              work.description,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}

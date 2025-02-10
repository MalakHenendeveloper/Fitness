import 'package:animations/animations.dart';
import 'package:diet/Ui/UpBodey/UpperBody.dart';
import 'package:diet/core/AppImages.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Uperbody extends StatelessWidget {
  const Uperbody({super.key});

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedColor: Color(0xFFE9E9E9),
      closedElevation: 0,
      transitionType: ContainerTransitionType.fade,
      transitionDuration: Duration(milliseconds: 800),
      openBuilder: (context, _) {
        return Upperbody();
      },
      closedBuilder: (context, action) => GestureDetector(
        onTap: action,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
          height: 210.h,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          decoration: BoxDecoration(
              color: Colors.deepPurple[900],
              borderRadius: BorderRadius.circular(30.r)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'YOUR NEXT WORKOUT',
                style: TextStyle(
                    color: Colors.grey[50],
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Upper Body',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                spacing: 20.w,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Image.asset(
                      Appimages.chest,
                      height: 90.h,
                      width: 90.w,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Image.asset(
                      Appimages.back,
                      height: 90.h,
                      width: 90.w,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Image.asset(
                      Appimages.biceps,
                      height: 90.h,
                      width: 90.w,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:animations/animations.dart';
import 'package:diet/Ui/detailsMeals/detailsmeals.dart';
import 'package:diet/data/Models/Meals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Itemcard extends StatelessWidget {
  Itemcard({super.key, required this.meals});
  Meals meals;
  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedColor: Color(0xFFE9E9E9),
      closedElevation: 0,
      transitionType: ContainerTransitionType.fade,
      transitionDuration: Duration(milliseconds: 500),
      openBuilder: (context, action) {
        return Detailsmeals(
          meals: meals,
        );
      },
      closedBuilder: (context, action) {
        return GestureDetector(
          onTap: action,
          child: Container(
            width: 180.w,
            margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25.r)),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.r),
                  child: Image.asset(
                    meals.imagePath,
                    height: 150,
                    width: 180.w,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w, top: 4.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        meals.mealTime,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(meals.name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold)),
                      Text(
                        "${meals.kiloCaloriesBurnt} Kcal",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Text("${meals.timeTaken} min",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

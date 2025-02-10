import 'package:diet/Ui/Home/widgets/ItemCard.dart';
import 'package:diet/Ui/Home/widgets/UperBody.dart';
import 'package:diet/Ui/Home/widgets/UserInformation.dart';
import 'package:diet/Ui/Home/widgets/caliroisprograss.dart';

import 'package:diet/data/Models/Meals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          Container(
              height: 260.h,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(45.r),
                  bottomLeft: Radius.circular(45.r),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [UserInfoSection(), Caliroisprograss()],
              )),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'MEALS FOR TODAY',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 270,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: meal.length,
                itemBuilder: (context, index) {
                  return Itemcard(
                    meals: meal[index],
                  );
                }),
          ),
          Uperbody()
                ],
              ),
        ));
  }
}

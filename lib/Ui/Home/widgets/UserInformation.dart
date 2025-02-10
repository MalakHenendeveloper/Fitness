import 'package:diet/core/AppImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserInfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sunday , 9 February',
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              'Hello , Malak',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        CircleAvatar(
          radius: 30.r,
          backgroundImage: AssetImage(Appimages.user),
        ),
      ],
    );
  }
}

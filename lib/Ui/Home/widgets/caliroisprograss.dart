import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:radial_progress/radial_progress.dart';

class Caliroisprograss extends StatelessWidget {
  const Caliroisprograss({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: RadialProgressWidget(
            percent: 0.7,
            diameter: 140,
            bgLineColor: Colors.transparent,
            progressLineWidth: 16,
            startAngle: StartAngle.end,
            progressLineColors: [
              Colors.deepPurple[900]!,
            ],
            centerChild: Text(
              '1773\nkcal left',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: Colors.deepPurple[900],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PROTEN',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            LinearPercentIndicator(
              width: 150.w,
              lineHeight: 8.0,
              percent: 0.7, // نسبة التقدم
              backgroundColor: Colors.grey[300]!,
              progressColor: Colors.green,
              barRadius: Radius.circular(20.r),
            ),
            Text(
              'CARBS',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            LinearPercentIndicator(
              width: 150.w,
              lineHeight: 8.0,
              percent: 0.5, // نسبة التقدم
              backgroundColor: Colors.grey[300]!,
              progressColor: Colors.redAccent,
              barRadius: Radius.circular(20.r),
            ),
            Text(
              'FATS',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            LinearPercentIndicator(
              width: 150.w,
              lineHeight: 8.0,
              percent: 0.3, // نسبة التقدم
              backgroundColor: Colors.grey[300]!,
              progressColor: Colors.orange,
              barRadius: Radius.circular(20.r),
            )
          ],
        ),
      ],
    );
  }
}

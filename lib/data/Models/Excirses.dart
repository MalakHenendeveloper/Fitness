import 'package:diet/core/AppImages.dart';

class Exercise {
  final String name;
  final String description;
  final String image;
  final int sets;
  final int reps;

  Exercise({
    required this.name,
    required this.description,
    required this.sets,
    required this.reps,
    required this.image
  });
}

class WorkoutCategory {
  final String categoryName;
  final List<Exercise> exercises;

  WorkoutCategory({required this.categoryName, required this.exercises});
}

class WorkoutPlan {
  final String name;
  final List<WorkoutCategory> categories;

  WorkoutPlan({required this.name, required this.categories});
}
final List<WorkoutPlan> workoutPlans = [
  WorkoutPlan(
    name: "Push-Pull-Legs",
    categories: [
      WorkoutCategory(
        categoryName: "Push ",
        exercises: [
          Exercise(
              image: Appimages.BenchPress,
              name: "Bench Press", description: "تمرين الضغط بالبار لتقوية الصدر.", sets: 4, reps: 8),
          Exercise(
              image: Appimages.ShoulderPress,
              name: "Overhead Shoulder Press", description: "تمرين الأكتاف بالبار.", sets: 4, reps: 10),
          Exercise(
              image: Appimages.InclineDumbbellPress,
              name: "Incline Dumbbell Press", description: "تمرين الصدر العلوي بالدامبل.", sets: 4, reps: 8),
          Exercise(
              image: Appimages.TricepsDips,
              name: "Dips", description: "تمرين المتوازي لتقوية الترايسبس.", sets: 3, reps: 12),
          Exercise(
              image: Appimages.LateralRaises,
              name: "Lateral Raises", description: "تمرين رفع جانبي للأكتاف.", sets: 4, reps: 12),
          Exercise(
              image: Appimages.TricepsRopePushdown,
              name: "Triceps Rope Pushdown", description: "تمرين الترايسبس بالكابل.", sets: 4, reps: 12),
        ],
      ),
      WorkoutCategory(
        categoryName: "Pull ",
        exercises: [
          Exercise(
              image: Appimages.Deadlift,
              name: "Deadlift", description: "تمرين تقوية الظهر والساقين.", sets: 4, reps: 6),
          Exercise(
              image: Appimages.Pullups,
              name: "Pull-ups", description: "تمرين العقلة لتقوية الظهر والبايسبس.", sets: 3, reps: 10),
          Exercise(
              image: Appimages.BentRowsback,
              name: "Bent-over Rows", description: "تمرين التجديف بالبار.", sets: 4, reps: 10),
          Exercise(
              image: Appimages.FacePulls,
              name: "Face Pulls", description: "تمرين الكتف الخلفي بالحبل.", sets: 4, reps: 12),
          Exercise(
              image: Appimages.HammerCurl,
              name: "Hammer Curls", description: "تمرين البايسبس والسواعد.", sets: 4, reps: 12),
          Exercise(
              image: Appimages.LatPulldown,
              name: "Lat Pulldown", description: "تمرين السحب العلوي.", sets: 4, reps: 10),
        ],
      ),
      WorkoutCategory(
        categoryName: "Legs ",
        exercises: [
          Exercise(
              image: Appimages.Squats,
              name: "Squats", description: "تمرين القرفصاء الأساسي.", sets: 4, reps: 10),
          Exercise(
              image: Appimages.RomanianDeadlifts,
              name: "Romanian Deadlifts", description: "تمرين أوتار الركبة والمؤخرة.", sets: 4, reps: 10),
          Exercise(
              image: Appimages.LegPress,
              name: "Leg Press", description: "تمرين الدفع بالساقين.", sets: 4, reps: 10),
          Exercise(
              image: Appimages.Lunges,
              name: "Lunges", description: "تمرين الاندفاع للفخذين.", sets: 3, reps: 12),
          Exercise(
              image: Appimages.CalfRaises,
              name: "Calf Raises", description: "تمرين السمانة.", sets: 4, reps: 15),
          Exercise(
              image: Appimages.LegCurls,
              name: "Leg Curl", description: "تمرين الساق الخلفية.", sets: 4, reps: 12),
        ],
      ),
    ],
  ),

  // 🏋️ نظام Arnold Split
  WorkoutPlan(
    name: "Arnold Split",
    categories: [
      WorkoutCategory(
        categoryName: "Chest & Back",
        exercises: [
          Exercise(
              image: Appimages.InclineBenchPress,
              name: "Incline Bench Press", description: "تمرين الصدر العلوي.", sets: 4, reps: 8),
          Exercise(
              image: Appimages.Pullups,
              name: "Pull-ups", description: "تمرين العقلة للظهر.", sets: 3, reps: 10),
          Exercise(
              image: Appimages.DumbbellFlys,
              name: "Dumbbell Flys", description: "تمرين تفتيح الصدر.", sets: 4, reps: 12),
          Exercise(
              image: Appimages.SeatedRow,
              name: "Seated Row", description: "تمرين سحب المقاعد للظهر.", sets: 4, reps: 10),
          Exercise(
              image: Appimages.FacePulls,
              name: "Face Pulls", description: "تمرين الكتف الخلفي.", sets: 4, reps: 12),
          Exercise(
              image: Appimages.Deadlift,
              name: "Deadlifts", description: "تمرين رفع الأثقال.", sets: 4, reps: 6),
        ],
      ),
      WorkoutCategory(
        categoryName: "Shoulders & Arms",
        exercises: [
          Exercise(
              image: Appimages.ShoulderPress,
              name: "Overhead Shoulder Press", description: "تمرين الأكتاف بالبار.", sets: 4, reps: 10),
          Exercise(
              image: Appimages.LateralRaises,
              name: "Lateral Raises", description: "تمرين رفع جانبي للأكتاف.", sets: 4, reps: 12),
          Exercise(
              image: Appimages.BarbellCurl,
              name: "Barbell Curls", description: "تمرين البايسبس بالبار.", sets: 4, reps: 10),
          Exercise(
              image: Appimages.TricepsDips,
              name: "Triceps Dips", description: "تمرين الترايسبس.", sets: 3, reps: 12),
          Exercise(
              image: Appimages.HammerCurl,
              name: "Hammer Curls", description: "تمرين السواعد والبايسبس.", sets: 4, reps: 12),
        ],
      ),
    ],
  ),

  // 🏋️ نظام Bro Split (كل يوم عضلة)
  WorkoutPlan(
    name: "Bro Split",
    categories: [
      WorkoutCategory(
        categoryName: "Day 1: Chest ",
        exercises: [
          Exercise(
              image: Appimages.FlatBenchPress,
              name: "Flat Bench Press", description: "تمرين الصدر الأساسي.", sets: 4, reps: 8),
          Exercise(
              image: Appimages.InclineDumbbellPress,
              name: "Incline Dumbbell Press", description: "تمرين الصدر العلوي.", sets: 4, reps: 10),
          Exercise(
              image: Appimages.ChestFly,
              name: "Chest Fly", description: "تمرين تفتيح الصدر.", sets: 4, reps: 12),
          Exercise(
              image: Appimages.TricepsDips,
              name: "Dips", description: "تمرين المتوازي للصدر.", sets: 3, reps: 12),
        ],
      ),
      WorkoutCategory(
        categoryName: "Day 2: Back (تمارين الظهر)",
        exercises: [
          Exercise(
              image: Appimages.Deadlift,
              name: "Deadlift", description: "تمرين تقوية الظهر.", sets: 4, reps: 6),
          Exercise(
              image: Appimages.Pullups,
              name: "Pull-ups", description: "تمرين العقلة للظهر.", sets: 3, reps: 10),
          Exercise(
              image: Appimages.BentRowsback,
              name: "Bent-over Rows", description: "تمرين التجديف.", sets: 4, reps: 10),
          Exercise(
              image: Appimages.FacePulls,
              name: "Face Pulls", description: "تمرين الكتف الخلفي.", sets: 4, reps: 12),
        ],
      ),
      WorkoutCategory(
        categoryName: "Day 3: Legs ",
        exercises: [
          Exercise(
              image: Appimages.Squats,
              name: "Squats", description: "تمرين القرفصاء الأساسي.", sets: 4, reps: 10),
          Exercise(
              image: Appimages.LegPress,
              name: "Leg Press", description: "تمرين الدفع بالساقين.", sets: 4, reps: 10),
          Exercise(
              image: Appimages.RomanianDeadlifts,
              name: "Romanian Deadlifts", description: "تمرين أوتار الركبة.", sets: 4, reps: 10),
          Exercise(
              image: Appimages.CalfRaises,
              name: "Calf Raises", description: "تمرين السمانة.", sets: 4, reps: 15),
        ],
      ),
      WorkoutCategory(
        categoryName: "Day 4: Shoulders",
        exercises: [
          Exercise(
              image: Appimages.OverheadPress,
              name: "Overhead Press", description: "تمرين الأكتاف الأساسي.", sets: 4, reps: 10),
          Exercise(
              image: Appimages.LateralRaises,
              name: "Lateral Raises", description: "تمرين رفع جانبي.", sets: 4, reps: 12),
          Exercise(
              image: Appimages.FrontRaises,
              name: "Front Raises", description: "تمرين رفع أمامي.", sets: 4, reps: 12),
        ],
      ),
      WorkoutCategory(
        categoryName: "Day 5: Arms",
        exercises: [
          Exercise(
              image: Appimages.BarbellCurl,
              name: "Barbell Curls", description: "تمرين البايسبس بالبار.", sets: 4, reps: 10),
          Exercise(
              image: Appimages.TricepsRopePushdown,
              name: "Triceps Rope Pushdown", description: "تمرين الترايسبس.", sets: 4, reps: 12),
          Exercise(
              image: Appimages.HammerCurl,
              name: "Hammer Curls", description: "تمرين السواعد.", sets: 4, reps: 12),
        ],
      ),
    ],
  ),
];

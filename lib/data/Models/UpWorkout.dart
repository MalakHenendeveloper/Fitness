import 'package:diet/core/AppImages.dart';

class Workout {
  String image;
  String name;
  String description;

  Workout({
    required this.description,
    required this.name,
    required this.image,
  });
}

// **تمارين الصدر (Chest Workouts)**
List<Workout> chestWorkouts = [
  Workout(
    description: '3 Sets - 6 repetitions',
    name: 'Bench Press',
    image: Appimages.BenchPress,
  ),
  Workout(
    description: '4 Sets - 6 repetitions',
    name: 'Dumbbell Press',
    image: Appimages.DumbbellPress,
  ),
  Workout(
    description: '3 Sets - 8 repetitions',
    name: 'Incline Bench Press',
    image: Appimages.InclineBenchPress,
  ),
  Workout(
    description: '4 Sets - 10 repetitions',
    name: 'Chest Fly',
    image: Appimages.ChestFly,
  ),
  Workout(
    description: '3 Sets - 12 repetitions',
    name: 'Push-ups',
    image: Appimages.Pushups,
  ),
];

// **تمارين الذراع (Arm Workouts)**
List<Workout> armWorkouts = [
  Workout(
    description: '4 Sets - 6 repetitions',
    name: 'Dumbbell Curl',
    image: Appimages.DumbbellCurl,
  ),
  Workout(
    description: '4 Sets - 6 repetitions',
    name: 'Barbell Curl',
    image: Appimages.BarbellCurl,
  ),
  Workout(
    description: '4 Sets - 6 repetitions',
    name: 'Cable Curl',
    image: Appimages.CableCurl,
  ),
  Workout(
    description: '3 Sets - 8 repetitions',
    name: 'Triceps Dips',
    image: Appimages.TricepsDips,
  ),
  Workout(
    description: '3 Sets - 10 repetitions',
    name: 'Hammer Curl',
    image: Appimages.HammerCurl,
  ),
];

// **تمارين الكتف (Shoulder Workouts)**
List<Workout> shoulderWorkouts = [
  Workout(
    description: '3 Sets - 8 repetitions',
    name: 'Shoulder Press',
    image: Appimages.ShoulderPress,
  ),
  Workout(
    description: '4 Sets - 10 repetitions',
    name: 'Lateral Raises',
    image: Appimages.LateralRaises,
  ),
  Workout(
    description: '3 Sets - 10 repetitions',
    name: 'Front Raises',
    image: Appimages.FrontRaises,
  ),
  Workout(
    description: '3 Sets - 8 repetitions',
    name: 'Face Pulls',
    image: Appimages.FacePulls,
  ),
  Workout(
    description: '4 Sets - 6 repetitions',
    name: 'Arnold Press',
    image: Appimages.ArnoldPress,
  ),
];

// **تمارين الظهر (Back Workouts)**
List<Workout> backWorkouts = [
  Workout(
    description: '2 Sets - 8 repetitions',
    name: 'Pull Ups',
    image: Appimages.Pushupsback,
  ),
  Workout(
    description: '2 Sets - 4 repetitions',
    name: 'Deadlift',
    image: Appimages.Deadlift,
  ),
  Workout(
    description: '4 Sets - 6 repetitions',
    name: 'Lat Pulldown',
    image: Appimages.LatPulldown,
  ),
  Workout(
    description: '3 Sets - 10 repetitions',
    name: 'Seated Row',
    image: Appimages.SeatedRow,
  ),
  Workout(
    description: '3 Sets - 8 repetitions',
    name: 'Bent-over Rows',
    image: Appimages.BentRowsback,
  ),
];

// **تمارين الرجل (Leg Workouts)**
List<Workout> legWorkouts = [
  Workout(
    description: '4 Sets - 6 repetitions',
    name: 'Squats',
    image: Appimages.Squats,
  ),
  Workout(
    description: '3 Sets - 8 repetitions',
    name: 'Lunges',
    image: Appimages.Lunges,
  ),
  Workout(
    description: '4 Sets - 10 repetitions',
    name: 'Leg Press',
    image: Appimages.LegPress,
  ),
  Workout(
    description: '3 Sets - 12 repetitions',
    name: 'Calf Raises',
    image: Appimages.CalfRaises,
  ),
  Workout(
    description: '3 Sets - 8 repetitions',
    name: 'Leg Curls',
    image: Appimages.LegCurls,
  ),
];
List<Workout> allWorkouts = [
  ...chestWorkouts,
  ...armWorkouts,
  ...shoulderWorkouts,
  ...backWorkouts,
  ...legWorkouts,
];

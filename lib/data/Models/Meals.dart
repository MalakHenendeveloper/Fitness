import 'package:diet/core/AppImages.dart';

class Meals {
  String mealTime;
  String name;
  String imagePath;
  String kiloCaloriesBurnt;
  String timeTaken;
  String descraption;
  List<String> ingredients;
  Meals({
    required this.name,
    required this.imagePath,
    required this.kiloCaloriesBurnt,
    required this.mealTime,
    required this.timeTaken,
    required this.descraption,
    required this.ingredients,
  });
}

List<Meals> meal = [
  Meals(
      name: "Fruit Granola",
      imagePath: Appimages.fruit,
      kiloCaloriesBurnt: '271',
      mealTime: 'BREAKFAST',
      timeTaken: '10',
  descraption: '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elementum tempus egestas sed sed risus pretium quam. Platea dictumst quisque sagittis purus sit. Senectus et netus et malesuada fames ac turpis egestas sed. Nibh cras pulvinar mattis nunc. Amet consectetur adipiscing elit duis tristique. Interdum velit euismod in pellentesque massa placerat duis ultricies lacus. Lectus proin nibh nisl condimentum id venenatis. Sit amet massa vitae tortor condimentum lacinia quis vel eros. Sed adipiscing diam donec adipiscing tristique risus nec feugiat in. Enim tortor at auctor urna. In dictum non consectetur a.

Sit amet risus nullam eget. Viverra adipiscing at in tellus integer feugiat scelerisque varius morbi. Quis risus sed vulputate odio ut enim blandit volutpat maecenas. Turpis cursus in hac habitasse platea dictumst quisque sagittis. Eget mi proin sed libero. Non diam phasellus vestibulum lorem sed risus ultricies tristique. Neque viverra justo nec ultrices dui. Gravida neque convallis a cras semper. Morbi tempus iaculis urna id volutpat lacus laoreet non. Pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Amet mattis vulputate enim nulla aliquet. Lectus urna duis convallis convallis tellus. Porta non pulvinar neque laoreet suspendisse interdum consectetur libero id. Diam ut venenatis tellus in metus vulputate eu scelerisque felis. Adipiscing vitae proin sagittis nisl. Sed libero enim sed faucibus turpis in. Pulvinar mattis nunc sed blandit. Nisi scelerisque eu ultrices vitae auctor eu augue ut. Diam volutpat commodo sed egestas egestas fringilla phasellus faucibus. Sed id semper risus in hendrerit.

Consectetur adipiscing elit duis tristique sollicitudin nibh. Dictumst quisque sagittis purus sit amet volutpat. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Mauris pharetra et ultrices neque. Leo duis ut diam quam nulla porttitor. Sit amet facilisis magna etiam tempor orci eu lobortis elementum. Blandit massa enim nec dui. Aliquam id diam maecenas ultricies mi eget mauris. Mattis rhoncus urna neque viverra justo nec ultrices. Nibh tellus molestie nunc non blandit. Non diam phasellus vestibulum lorem. Ut diam quam nulla porttitor massa id neque aliquam. Eget mauris pharetra et ultrices neque ornare aenean euismod. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Tellus in hac habitasse platea dictumst vestibulum.

Adipiscing commodo elit at imperdiet. Mollis nunc sed id semper risus. Magna fermentum iaculis eu non. Ut pharetra sit amet aliquam id diam maecenas ultricies mi. Amet consectetur adipiscing elit ut aliquam purus sit amet. Ultrices sagittis orci a scelerisque purus semper. Pharetra magna ac placerat vestibulum lectus mauris ultrices eros in. Massa tempor nec feugiat nisl pretium. Etiam dignissim diam quis enim lobortis scelerisque. Duis ut diam quam nulla.

Ultricies lacus sed turpis tincidunt id aliquet risus feugiat. Vitae aliquet nec ullamcorper sit amet risus. Malesuada nunc vel risus commodo viverra. Id aliquet risus feugiat in ante metus dictum at tempor. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque. Ipsum dolor sit amet consectetur. In nibh mauris cursus mattis molestie a. Duis at consectetur lorem donec massa sapien faucibus et molestie. Amet nisl purus in mollis nunc sed id. Sagittis vitae et leo duis ut. Purus in mollis nunc sed id. Mauris ultrices eros in cursus turpis.''',

  ingredients: [
    "1 cup of granola",
    "1 banana",
    "1/2 cup of raisins",
    "1 tbsp of honey",]
  ),
  Meals(
      name: "Pesto Pasta",
      imagePath: Appimages.pesto,
      kiloCaloriesBurnt: '621',
      mealTime: 'DINNER',
      timeTaken: '15',
  descraption: '''This delicious Pesto Pasta is a perfect dinner option with a rich and creamy texture. Made with fresh basil, garlic, and parmesan cheese, it offers a delightful taste that pairs well with any meal. Enjoy a healthy and fulfilling dinner with this easy-to-make recipe.''',
  ingredients: [
    "200g pasta",
    "2 tbsp pesto sauce",
    "1 tbsp olive oil",
    "1/4 cup parmesan cheese",
    "Salt & pepper to taste",]
  ),
  Meals(
      name: "SNACK",
      imagePath: Appimages.keto,
      kiloCaloriesBurnt: '414',
      mealTime: 'Keto Snack',
      timeTaken: '16',
    descraption: '''A perfect keto-friendly snack to keep you energized throughout the day. This healthy and delicious snack is packed with good fats and protein, making it ideal for a low-carb diet. Enjoy a tasty mix of nuts, cheese, and avocado for a satisfying and nutritious bite.''',
    ingredients: [
      "1/2 avocado",
      "10 almonds",
      "5 walnut halves",
      "50g cheddar cheese",
      "1 tbsp peanut butter (sugar-free)",
    ],
  ),
];

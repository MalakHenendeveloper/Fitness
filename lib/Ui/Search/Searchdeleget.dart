import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/Models/Excirses.dart';

class WorkoutSearchDelegate extends SearchDelegate<String?> {
  final List<WorkoutPlan> workoutPlans;

  WorkoutSearchDelegate(this.workoutPlans);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    print("🔍 البحث عن: $query");

    if (query.trim().isEmpty) {
      return Center(
        child: Text(
          "يرجى إدخال كلمة للبحث 🔍",
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    }

    List<Map<String, String>> searchResults = _searchExercises(query);

    print("📌 نتائج البحث: $searchResults");

    return searchResults.isEmpty
        ? _buildNoResults()
        : _buildResultsList(searchResults);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Center(
        child: Text(
          "🔍 ابدأ البحث عن التمارين...",
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    }

    List<Map<String, String>> suggestions = _searchExercises(query);
    return _buildResultsList(suggestions);
  }

  List<Map<String, String>> _searchExercises(String query) {
    List<Map<String, String>> results = [];

    if (workoutPlans.isEmpty) {
      print("⚠️ قائمة التمارين فارغة!");
      return results;
    }

    String cleanedQuery = query.toLowerCase().trim();

    for (var plan in workoutPlans) {
      for (var category in plan.categories) {
        for (var exercise in category.exercises) {
          String exerciseName = exercise.name.toLowerCase().trim();
          String categoryName = category.categoryName.toLowerCase().trim();
          String planName = plan.name.toLowerCase().trim();

          if (exerciseName.contains(cleanedQuery) ||
              categoryName.contains(cleanedQuery) ||
              planName.contains(cleanedQuery)) {
            results.add({
              "exercise": exercise.name,
              "category": category.categoryName,
              "plan": plan.name
              ,"image": exercise.image,
            });
          }
        }
      }
    }

    return results;
  }

  Widget _buildResultsList(List<Map<String, String>> results) {
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return Container(height: 100.h,width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
        padding: EdgeInsets.symmetric(vertical: 5.h),
        decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(20.r)
        ),
          child:  ListTile(
            title: Text(results[index]["exercise"] ?? ""),
            subtitle: Text(
                "${results[index]["category"]} - ${results[index]["plan"]}"),
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(30.r),
                child: Image.asset('${results[index]['image']}', width: 60.w,height: 80.h,

                fit: BoxFit.fitHeight,)),
            onTap: () {
              close(context, results[index]["exercise"]);
            },
          ),
        );

      },
    );
  }

  Widget _buildNoResults() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.warning_amber_rounded, color: Colors.red, size: 50),
          SizedBox(height: 10),
          Text("❌ لا توجد نتائج متطابقة", style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}

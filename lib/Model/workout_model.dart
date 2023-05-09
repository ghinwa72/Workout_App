import 'exercise_model.dart';

class Workout {
  final String day;
  final String muscleGroup;
  final List<Exercise> exercises;

  Workout({
    required this.day,
    required this.muscleGroup,
    required this.exercises,
  });

  factory Workout.fromJson(Map<String, dynamic> json) {
    var exercisesJson = json['exercises'] as List;
    var exercises =
    exercisesJson.map((e) => Exercise.fromJson(e)).toList();

    return Workout(
      day: json['day'],
      muscleGroup: json['muscle_group'],
      exercises: exercises,
    );
  }
}
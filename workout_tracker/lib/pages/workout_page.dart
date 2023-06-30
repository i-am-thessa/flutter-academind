import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_tracker/data/workout_data.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key, required this.workoutName});
  final String workoutName;

  @override
  State<StatefulWidget> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutData>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: Text(widget.workoutName),
        ),
        body: ListView.builder(
          itemCount: value.numberOfExercisesInWorkout(widget.workoutName),
          itemBuilder: (context, index) => ListTile(
            title: Text(value
                .getRelevantWorkout(widget.workoutName)
                .exercises[index]
                .name),
            subtitle: Row(
              children: [
                Chip(
                  label: Text(
                    "${value.getRelevantWorkout(widget.workoutName).exercises[index].weight}kg",
                  ),
                ),
                Chip(
                  label: Text(
                    "${value.getRelevantWorkout(widget.workoutName).exercises[index].reps} reps",
                  ),
                ),
                Chip(
                  label: Text(
                    "${value.getRelevantWorkout(widget.workoutName).exercises[index].sets} sets",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

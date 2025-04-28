import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit.dart';
import 'package:note_app/model/task_model.dart';
import 'package:note_app/service/task_manger.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.task});

  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: IconButton(
          onPressed: () {
            TaskManger.switchCase(task.id);

            BlocProvider.of<TasksCubit>(context).updateTasks();
          },
          icon: Icon(
            task.isComplete ? Icons.check_box : Icons.check_box_outline_blank,
          ),
        ),
        title: Text(task.title),
        subtitle: Text("Created At :${task.date.toString()} "),
        trailing: IconButton(
          onPressed: () {
            TaskManger.removeTask(task.id);

            BlocProvider.of<TasksCubit>(context).updateTasks();
          },
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}

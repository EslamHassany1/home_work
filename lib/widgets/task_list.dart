import 'package:flutter/material.dart';
import 'package:note_app/service/task_manger.dart';
import 'package:note_app/widgets/task_card.dart';

class TaskListBuilder extends StatelessWidget {
  const TaskListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) => TaskCard(task: taskList[index]),
      ),
    );
  }
}

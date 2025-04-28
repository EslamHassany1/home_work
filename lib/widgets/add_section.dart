import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit.dart';
import 'package:note_app/model/task_model.dart';
import 'package:note_app/service/task_manger.dart';

class AddSection extends StatefulWidget {
  const AddSection({super.key});

  @override
  State<AddSection> createState() => _AddSectionState();
}

class _AddSectionState extends State<AddSection> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: TextField(controller: controller)),
        ElevatedButton(
          onPressed: () {
            TaskManger.addTask(
              TaskModel(
                id: DateTime.now().microsecond,
                title: controller.text.trim(),
              ),
            );

            BlocProvider.of<TasksCubit>(context).updateTasks();
            controller.clear();
          },
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}

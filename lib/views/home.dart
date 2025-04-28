import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit.dart';
import 'package:note_app/cubit/notes_state.dart';

import 'package:note_app/widgets/add_section.dart';
import 'package:note_app/widgets/no_task.dart';
import 'package:note_app/widgets/task_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            BlocBuilder<TasksCubit, TasksState>(
              builder: (context, state) {
                if (state is NoTasksState) {
                  return NoTask();
                } else {
                  return TaskListBuilder();
                }
              },
            ),

            // Expanded(child: NoTask()),
            AddSection(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

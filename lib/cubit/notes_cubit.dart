import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_state.dart';
import 'package:note_app/service/task_manger.dart';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit() : super(NoTasksState());

  updateTasks() {
    if (taskList.isEmpty) {
      emit(NoTasksState());
    } else {
      emit(ShowTasks());
    }
  }
}

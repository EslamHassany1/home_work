import 'package:note_app/model/task_model.dart';

class TaskManger {
  //add
  //delete
  // toggle
  static void addTask(TaskModel item) {
    taskList.add(item);
  }

  static void removeTask(int id) {
    taskList.removeWhere((element) => element.id == id);
  }

  static void switchCase(int id) {
    for (var element in taskList) {
      if (element.id == id) {
        element.isComplete = !element.isComplete;
      }
    }
  }
}

List<TaskModel> taskList = [];

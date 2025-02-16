/*

Create a to-do list program using a List where each item has a description, due date, and
completion status (as bool). Implement methods to add, remove, and update tasks, including the
use of for-each loops.
 */

import 'dart:io';

main(){


  ToDoList tasks = ToDoList();
  tasks.addTodo("task1", "descriotion", true );
  tasks.addTodo("asda", "asdasd", false );
  tasks.addTodo("task", "descriotion", true );
  tasks.addTodo("task", "descriotion", false );
  tasks.showData();
  print("-----------------------------------");


  tasks.showData();
}

class ToDo{

  String task ;
  String description ;
  bool completionStatus;
  ToDo({required this.task , required this.description ,required this.completionStatus});
}

class ToDoList {

  List<ToDo>todoList =[];

  addTodo(String task , String descriotion ,bool completionStatus ) {

    todoList.add(ToDo(task:task , description: descriotion , completionStatus: completionStatus));
  }

  showData(){
    todoList.forEach((element) {
      print("task:${element.task} ,  descriotion : ${element.description} , completionStatus: ${element.completionStatus} ");
    });

  }

  removeData(String task){
    todoList.removeWhere((todoList) => todoList.task==task);
  }

  updateTaskByTask({required String taskName ,required String updatetask, required String updateDescription ,required bool updateState, }){
    todoList.forEach((ToDo) {
      if(ToDo.task ==taskName){
        ToDo.task = updatetask;
        ToDo.description = updateDescription;
        ToDo.completionStatus = updateState;
      }

    });

  }

}

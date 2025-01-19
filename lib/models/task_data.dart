import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:sticky_notes/models/task.dart';

class TaskData extends ChangeNotifier {
  //TODO Creating a List
  List<Task> _taskList = [
    Task(taskName: 'Buy Egg'),
    Task(taskName: 'Buy Mango'),
    Task(taskName: 'Buy Milk'),
  ];

  //Get Method For Task List
  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  //Get Method
  int get listCount {
    return _taskList.length;
  }

  //Method For adding New Task
  void addTask(String newTaskName) {
    _taskList.add(Task(taskName: newTaskName));
    notifyListeners();
  }

  //Update Task
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  //Delete Task From List
void deleteTask(Task task){
    _taskList.remove(task);
    notifyListeners();
}


}

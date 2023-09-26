import 'package:flutter/cupertino.dart';

import 'PostAssignment/util.dart';
import 'TodoApp/data/task.dart';

class ProviderData with ChangeNotifier{
  List<Task> taskList = [

    Task("Task1"),
    Task("Task1"),
    Task("Task1"),
    Task("Task1"),
    Task("Task1"),
    Task("Task1"),
    Task("Task1"),
    Task("Task1"),

  ];

  void CompleteTask(Task task){
    task.complete=!task.complete;
    notifyListeners();

  }

}
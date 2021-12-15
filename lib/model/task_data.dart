import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{

List<Task> theTasks = [];

    int get taskCount{
  return theTasks.length;
   }


   addNewTask (String taskTitle){
      theTasks.add(Task(name: taskTitle));
      notifyListeners();
   }



   deleteTask(int index){
      theTasks.removeAt(index);
      notifyListeners();
   }



}


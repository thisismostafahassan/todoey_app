import 'package:flutter/material.dart';
import 'task_tile.dart';

import 'package:provider/provider.dart';
import 'package:todoey_app/model/task_data.dart';

class TasksListView extends StatelessWidget{


  @override
  Widget build(BuildContext context) {


    return Consumer<TaskData>(

      builder: (context,TaskData taskData, child) {
        return ListView.builder(itemBuilder: (context, index){
          return TaskTile(
            taskName:taskData.theTasks[index].name,
            index: index,
          );
        },
          itemCount:  taskData.theTasks.length,
        );
      },

    );




}}

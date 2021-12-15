import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/model/task_data.dart';


class TaskTile extends StatefulWidget {

  final String taskName;
  final int index;

  TaskTile({this.taskName,this.index});
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {




  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onLongPress: (){
          Provider.of<TaskData>(context,
          listen: false).deleteTask(widget.index);
        },
        title: Text(
          widget.taskName ?? 'New Task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: (newValue){
            setState(() {
             isChecked = newValue;
            });
          },
        ),
      ),
    );
  }
}




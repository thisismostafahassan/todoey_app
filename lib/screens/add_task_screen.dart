import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/model/task_data.dart';



class AddTaskScreen extends StatelessWidget {






String newTaskTitle ;

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(40),
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          )
        ),

       child: Column(
         children: [
           Text('Add Task',
           style: TextStyle(
              fontWeight: FontWeight.bold,
             fontSize: 25,
             color: Colors.lightBlueAccent,
           ),
           ),
           TextField(

            autofocus: true,
             onChanged: (value){
               newTaskTitle = value;
             },
           ),
           SizedBox(
             height: 25,
           ),
           Container(
             height: 40,
             width: double.infinity,
             child: RawMaterialButton(onPressed: (){

               Provider.of<TaskData>(context, listen: false).addNewTask(newTaskTitle);

               Navigator.pop(context);
             },
               fillColor: Colors.lightBlueAccent,
             child: Text('Add',
             style: TextStyle(
              color: Colors.white,
              ),
             ),
             ),
           ),
         ],
       ),
      ),
    );
  }
}

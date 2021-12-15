import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/screens/TasksScreen.dart';
import 'model/task_data.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create:(context) => TaskData() ,


      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}

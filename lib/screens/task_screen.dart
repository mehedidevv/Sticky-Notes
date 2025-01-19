import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sticky_notes/components/constrains.dart';
import 'package:sticky_notes/models/task_data.dart';
import 'package:sticky_notes/widgets/task_list.dart';

import '../models/task.dart';
import '../widgets/single_task_tile.dart';
import 'add_new_task.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // //TODO Function For ModalSheet
    // Widget bottomSheet(BuildContext context){
    //   return Container();
    // }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,

        //TODO Implementing Floating Action Button
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
            onPressed: (){
              //TODO Show Bottom Sheet
              showModalBottomSheet(
                  context: context,
                  builder: (context)=>AddTaskScreen(),
              );
            },
          child: Icon(Icons.add),
            ),

        

        //TODO App Bar
        appBar: AppBar(
          title: Text('Task Screen'),
          backgroundColor: Colors.lightBlueAccent,
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding:
              EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/mehedi.jpg"),
                  ),
                  Text('Mehedi Hasan',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                  Text('mehedihasancse1181@gmail.com',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'My Task',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                      '${Provider.of<TaskData>(context).listCount} Task',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ],
              ),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),

                //TODO All Task Add Here
                child: TasksList(

                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}











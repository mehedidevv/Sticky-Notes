import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sticky_notes/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {

  TextEditingController _controllerName=TextEditingController();

  @override
  Widget build(BuildContext context) {

   // String newTaskName = '';

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              controller: _controllerName,
              ),
            SizedBox(
              height: 10,
            ),

            ElevatedButton(
                onPressed: () {
                  var newTaskName=_controllerName.text.toString();
                  //TODO
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskName);
                  Navigator.pop(context);
                },
                child: Text('Add'))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../models/task.dart';


class SingleListTile extends StatelessWidget {

  final String taskName;
  final bool checkBoxState;
  final Function toggleCheckBox;
  final Function onLongPress;

  //TODO Constructor
  const SingleListTile({
    required this.taskName,
    this.checkBoxState=false,
    required this.toggleCheckBox,
    required this.onLongPress
  });
  //, bool? checkBoxState

  //bool checkBoxState = false;

  //Function For Checking Bool Value
  // void toggleCheckBox(bool value){
  //   setState(() {
  //     checkBoxState=value;
  //   });
  // }

  //TODO Creating a List
  // List<Task> taskList = [
  //   Task(taskName: 'Buy Pen'),
  //   Task(taskName: 'Buy Egg'),
  //   Task(taskName: 'Buy Mango'),
  //   Task(taskName: 'Buy Milk'),
  // ];

  @override
  Widget build(BuildContext context) {
    return ListTile(

      //On Long Press For Delete Task
      onLongPress: () => onLongPress(),

      leading: Text(
        taskName,
        style: TextStyle(
          decoration: checkBoxState == true ? TextDecoration.lineThrough : null,
         // color: Colors.black,
          //color: checkBoxState==true? Colors.red : Colors.black,
          fontSize: 17,
        ),
      ),
      trailing: Checkbox(
          //tristate: true,
          value: checkBoxState,
          onChanged: (value){
           // print(value);
            toggleCheckBox(value);
          })
    );
  }
}

// //TODO Check Box State
// class TaskCheckBox extends StatelessWidget {
//   //TODO Constructor
//   TaskCheckBox({required this.checkBoxState, required this.toggleCheckBox});
//
//   final bool checkBoxState;
//   final Function toggleCheckBox;
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         value: checkBoxState,
//         onChanged: (value) {  //true or false
//           toggleCheckBox(value);  //value = true of false
//         });
//   }
// }

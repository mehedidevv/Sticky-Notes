import 'package:flutter/material.dart';
import 'package:sticky_notes/models/task.dart';
import 'package:sticky_notes/models/task_data.dart';
import 'package:sticky_notes/widgets/single_task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  //TODO Creating a List
  @override
  Widget build(BuildContext context) {
    return Consumer <TaskData>(
      builder: (context, taskData, child){

        return ListView.builder(
            itemCount: taskData.listCount,
            itemBuilder: (context, index) {

              //Minimize
              final Task task= taskData.taskList[index];

              return SingleListTile(

                  taskName: task.taskName.toString(),
                  checkBoxState: task.isDone,
                  //checkBoxState: Provider.of<TaskData>(context).taskList[index].isDone,
                  toggleCheckBox: (value){
                    //TODO
                    taskData.updateTask(task);
                  },

                //Grab From Call Back Function For Delete Task
                onLongPress: (){
                    taskData.deleteTask(task);
                },

                  );

            });

      },
    );
  }
}
